/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Vitesse                                          //
//		Version 1.00 - BLD - 29/12/2011                        //
//		Version 1.01 - BLD - 24/01/2012 -> update gestion feux // 
//		Version 1.02 - BLD - 16/02/2012 -> encapsulation debug //
//		Version 1.03 - BLD - 20/03/2012 -> patch extended id   //
//                                                             //
/////////////////////////////////////////////////////////////////


// TODO : vérifier la prog, timers en external pour la mesure de vitesse.

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>

// Assignation des sorties analogiques
#define PHARES_L        PIN_A1  
#define PHARES_R        PIN_A3  
#define CODES_L         PIN_B1  
#define CODES_R         PIN_C4    
#define CLIGN_L         PIN_A3  
#define CLIGN_R			PIN_A4


// OBSOLETE Définition des constantes caractéristiques du capteur de vitesse
#define SPEED_THRESHOLD	 	10
#define SAMPLING_SPEED_TIME 100
#define TOGGLING_PERIOD	    500
#define CST_CAPT_L			322
#define CST_CAPT_R      	322

//Mode debug commenter la ligne pour l'enlever
/*
#define DEBUG 1
#define TRACE 1
#define TRACE_ALL 1
#define TRACE_BLINK 1
#define TRACE_LIGHT 1
#define TRACE_SPEED_LEFT 1
#define TRACE_SPEED_RIGHT 1
#define TRACE_SPEED_ALL 1
#define TRACE_SPEED_MODE 1
#define TRACE_CAN 1
*/


#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

// Définition de type

enum SpeedMode { LOW_SPEED, HIGH_SPEED };   // permet de savoir le mode de mesure de vitesse à effectuer

// Variables globales
unsigned int16 speedL=0; 				    // vitesse roue gauche en m/s donnée après calcul
unsigned int16 speedR=0; 					// vitesse roue droite en m/s donnée après calcul
unsigned int16 speed=0;						// vitesse moyenne du véhicule
unsigned int16 timeL_ms=0;          		// pour les mesures de vitesse à gauche
unsigned int16 timeR_ms=0;		            // pour les mesures de vitesse à droite
unsigned int16 speed_modeL_ms=0;			// variable temporelle pour le changement de mode de mesure de vitesse de la roue gauche
unsigned int16 speed_modeR_ms=0;			// variable temporelle pour le changement de mode de mesure de vitesse de la roue droite
unsigned int16 speed_reemit_ms=0;			// date d'emission du dernier message SPEED_DATA
unsigned int16 clign_ms=0;         			// variable temporelle pour les clignotants
unsigned int8 clock=0;						// variable temporelle comptant les interruption du timer2
unsigned int16 ms=0;            			// variable temporelle contenant le ms du uptime
unsigned int16 sec=0;						// contient les secondes du uptime.
unsigned int16 tmp=0;						// variable temporaire

int8 light=0;								// variable indiquant l'état des feux : 0=>éteint, 1=>code, 2=>feux
int1 blink_left=0;							// état du clignotant gauche: 0=>éteint; 1=>allumé
int1 blink_right=0;							// état du clignotant droit: 0=>éteint; 1=>allumé
int1 blinkl_ack=0;							// flag valant 1 lorsqu'il faut envoyer l'accusé de réception du message BLINK_ORDER_LEFT
int1 blinkr_ack=0;							// flag valant 1 lorsqu'il faut envoyer l'accusé de réception du message BLINK_ORDER_RIGHT
int1 blink_status=0;                        // variable toggle à la fréquence des clignotants
int1 light_ack=0;							// flag valant 1 lorsqu'il faut envoyer l'accusé de réception du message LIGHT_ORDER

//int1 clign_on = false;
// int1 timer_active = false;
SpeedMode measuring_modeL = LOW_SPEED;      // mode de mesure de la vitesse pour la roue gauche 
SpeedMode measuring_modeR = LOW_SPEED;      // mode de mesure de la vitesse pour la roue droite

// int1 sendSpeed = false;

// Prototypes de fonctions

#inline
void sendCAN();

#inline
void listenCAN();

#inline
void internalLogic();

// Méthode d'interruption du timer2
#int_timer2
void isr_timer2()       // lors de l'interruption du timer 2 (timer global) au bout d'une milliseconde
{
	clock++;
	if(clock>=10)
	{
		ms++;
		clign_ms++;
		timeL_ms++;
		timeR_ms++;
		speed_modeL_ms++;
		speed_modeR_ms++;
		speed_reemit_ms++;
		clock=0;
	}
	if(ms>=1000)
	{
		sec++;
		ms=0;
	}
}

#org DEFAULT
void main()
{
	//Initialisation du PIC
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
	setup_adc_ports(NO_ANALOGS);
	//A documenter
   	set_tris_a(0b00010000);
  	set_tris_c(0b00000001);

   	enable_interrupts(INT_TIMER2);
   	enable_interrupts(GLOBAL);
	// A checker
 	setup_timer_0(RTCC_EXT_L_TO_H);     //incrémente à chaque front montant (1 tour de roue)
 	setup_timer_1(T1_EXTERNAL);         //incrémente à chaque front montant (1 tour de roue)
  	setup_timer_2(T2_DIV_BY_4,25,5);    //setup up timer2 to interrupt every 0.1ms

    can_init();
   
	CHECK_PWUP								  //on vérifie que le démarrage est du à une mise sous tension et non un watchdog

    //  BOUCLE DE TRAVAIL
    while(true)
   	{
		LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in working loop",sec,ms)
		restart_wdt();
		listenCAN();
	
		restart_wdt();
    	internalLogic();
		
		restart_wdt();
    	sendCAN();
 	}
}

#inline
void listenCAN()        // Fonction assurant la réception des messages sur le CAN et la redirection de ces derniers
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;
	int r=0;			// flag assurant la bonne lecture de la donnée sur le CAN

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in ListenCAN",sec,ms)

	if(can_kbhit())                                // Une donnée est présente dans le buffer de réception du CAN
	{
		LOG_DEBUG(TRACE_CAN,"Something hit the CAN bus",sec,ms)
		if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on récupère le message
		{
			LOG_DEVELOPMENT_LD(TRACE_CAN||TRACE_ALL,"CAN RX - ID ",rxId,sec,ms)
			r=1;								   // On a effectivement lu quelque chose sur le CAN
			switch(rxId)                           // en fonction de l'id on le traite spécifiquement
			{
				case BLINK_ORDER_LEFT:
				{		
					blinkl_ack=1;                  // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					blink_left=rxData[0];          // On change l'état du clignotant gauche
					LOG_TESTING_D(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F||TRACE_BLINK_FRONT||TRACE_BLINK_LF,"Blink order left incomming from the CAN is ",rxData[0],sec,ms)
					break;
				}
				case BLINK_ORDER_RIGHT:
				{
                    blinkr_ack=1;                  // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					blink_right=rxData[0];         // On change l'état du clignotant droit
					LOG_TESTING_D(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F||TRACE_BLINK_FRONT||TRACE_BLINK_RF,"Blink order right incomming from the CAN is ",rxData[0],sec,ms)
					break;
				}
				case LIGHT_ORDER:
				{
					light_ack=1;				   // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					light=rxData[0]; 			   // On éteint les feux
					LOG_TESTING_D(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F||TRACE_LIGHT_FRONT,"Light incomming from the CAN is ",rxData[0],sec,ms)
	  				break;
				}
			}
	    }
		LOG_LISTEN_CAN(r,rxStat,rxId,rxLen,sec,ms)
	}
}

#inline
void internalLogic()
{
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in internalLogic",sec,ms)
	// Gestion des feux
	if(light==2)						  // On allume les phares
	{
		LOG_TESTING(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F||TRACE_LIGHT_FRONT," LIGHT STATUS - Feux are enabled",sec,ms)
		output_bit(PHARES_R,1);
		output_bit(PHARES_L,1);  
		output_bit(CODES_R,1);			  // On ne doit pas oublier d'allumer les codes 
		output_bit(CODES_L,1);    
	}
	else if (light==1)					  // On allume les codes
	{
		LOG_TESTING(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F||TRACE_LIGHT_FRONT," LIGHT STATUS - Codes are enabled",sec,ms)
		output_bit(PHARES_R,0);			  // On ne doit pas oublier d'éteindre les feux 
		output_bit(PHARES_L,0);  
		output_bit(CODES_R,1);			  
		output_bit(CODES_L,1);    
	}
	else								  // On éteint tout
	{
		LOG_TESTING(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F||TRACE_LIGHT_FRONT," LIGHT STATUS - All light are off",sec,ms)
		output_bit(PHARES_R,0);			 
		output_bit(PHARES_L,0);  
		output_bit(CODES_R,0);			  
		output_bit(CODES_L,0);   
	}	
    
	// Gestion des clignotants
	if(clign_ms >= 650)                                   // 650 ms = +- 1.5Hz après l'activation du timer = frequence desclign_msotants
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_ALL_LIGHT_F||TRACE_BLINK_FRONT,"Blink status has been toggled",sec,ms)
		clign_ms = 0;                                     // repartir pour 500 ms
		blink_status = !blink_status ;                    // changer l'état d'allumage desclign_msotants
		
		output_bit(CLIGN_R, blink_status & blink_right); // allumer ou éteindre le clignotant droit s'il est activé
		output_bit(CLIGN_L, blink_status & blink_left);  // allumer ou éteindre le clignotant gauche s'il est activé
	}

	//Gestion de l'acquisition de la vitesse
    
	//Explication :
	// Vitesse : regarder toutes les secondes la valeur du timer puis remettre à zéro
	// OU
	// Si trop lent : regarder le temps entre deux fronts montants (critère : moins de X fronts montants/seconde


	// ## Roue gauche ##
	//		# Acquisition
    if(measuring_modeL == HIGH_SPEED)						       		   				// Si on est en mode de mesure rapide
    {
		LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_L,"Left wheel High_Speed measurement mode enabled",sec,ms)
        if(timeL_ms >= SAMPLING_SPEED_TIME)		
        {
            speedL = (int16)((get_timer0() * CST_CAPT_L) / 100); 						// On a désormais la vitesse en ??
            set_timer0(0);																// On remet le timer de la roue gauche à zéro
			timeL_ms=0;																	// On remet le compteur de temps à 0.
			LOG_TESTING_LD(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_L,"LEFT - High_Speed_mode - ",speedL,sec,ms)
        }
    }
    else																				// Si on est en mode de mesure lent
    {
		LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_L,"Left wheel Low_Speed measurement mode enabled",sec,ms)
        if(get_timer0() >= 1)
        {
            speedL = (int16)((CST_CAPT_L * 10 * get_timer0()) / (timeL_ms+clock/10));	// On a désormais la vitesse en ??
            set_timer0(0);																// On remet le timer de la roue gauche à zéro
            timeL_ms = 0;																// On remet le compteur temporel à 0
			LOG_TESTING_LD(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_L,"LEFT - Low_Speed_mode - ",speedL,sec,ms)
        }
    }
	//		# Mise à jour du mode de mesure
	if(speed_modeL_ms >= TOGGLING_PERIOD)												// On vérifie que l'on a pas permuter le mode d mesure trop récemment
	{
		if(speedL <= SPEED_THRESHOLD)													// On est en dessous du seuil on passe en mode de mesure lent
		{
			measuring_modeL=LOW_SPEED;
			speed_modeL_ms=0;															// on remet à zéro le compteur de changement de mode
			LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_L,"LEFT - Changing measurement mode to low_speed",sec,ms)
		}
		else																			// Sinon on est en mode rapide 
		{
			measuring_modeL=HIGH_SPEED;
			speed_modeL_ms=0;															// on remet le compteur de changement de mode à zéro
			LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_L,"LEFT - Changing measurement mode to high_speed",sec,ms)
		}
	}

	// ## Roue droite ##
	//		# Acquisition
    if(measuring_modeR == HIGH_SPEED)													// Si on est en mode de mesure rapide
    {
		LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_R,"Right wheel High_Speed measurement mode enabled",sec,ms)
        if(timeR_ms == 500)
        {
            speedR = (int16)((get_timer1() * CST_CAPT_R) / 100);						// On a désormais la vitesse en ??
            set_timer1(0);																// On remet le timer de la roue droite à zéro
			timeR_ms = 0;															  	// On remet le compteur de temps à 0.
			LOG_TESTING_LD(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_R,"RIGHT - High_Speed_mode - ",speedR,sec,ms)
        }
    }
    else																			  	// Si on est en mode de mesure lent
    {
		LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_R,"Right wheel Low_Speed measurement mode enabled",sec,ms)
        if(get_timer1() >= 1)
        {
            speedR = (int16)((CST_CAPT_R * 10 * get_timer1()) / (timeR_ms+clock/10)); 	// On a désormais la vitesse en ??
            set_timer1(0); 															  	// On remet le timer de la roue droite à zéro
			timeR_ms = 0;														      	// On remet le compteur de temps à 0.
			LOG_TESTING_LD(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_R,"RIGHT - Low_Speed_mode - ",speedR,sec,ms)
        }
    }
	//		# Mise à jour du mode de mesure
	if(speed_modeR_ms >= TOGGLING_PERIOD)												// On vérifie que l'on a pas permuter le mode d mesure trop récemment
	{
		if(speedR <= SPEED_THRESHOLD)													// On est en dessous du seuil on passe en mode de mesure lent
		{
			measuring_modeL=LOW_SPEED;
			speed_modeR_ms=0;															// on remet à zéro le compteur de changement de mode
			LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_R,"RIGHT - Changing measurement mode to low_speed",sec,ms)
		}
		else																			// Sinon on est en mode rapide 
		{
			measuring_modeL=HIGH_SPEED;
			speed_modeR_ms=0;															// on remet le compteur de changement de mode à zéro
			LOG_WARN(TRACE_ALL||TRACE_SPEED||TRACE_SPEED_R,"RIGHT - Changing measurement mode to high_speed",sec,ms)
		}
	}


	// Gestion des dépassements de taille des variables
	if(speed_modeL_ms>=20000)
	{
		speed_modeL_ms=0;
	}
	if(speed_modeR_ms>=20000)
	{
		speed_modeR_ms=0;
	}

	// Calcul de la vitesse du véhicule
	speed=(int16)((speedL+speedR)/2);
	LOG_TESTING_LD(TRACE_ALL||TRACE_SPEED,"Speed value : ",speed,sec,ms)
}

#inline
void sendCAN()
{
	int r;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in SendCAN",sec,ms)
	if(speed_reemit_ms >= TR_SPEED)															// On envoie la vitesse si l'on a dépassé le reemit time
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_PARK,"Reemit speed time is over",sec,ms)
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for speed ",sec,ms)
			r=can_putd(SPEED_DATA,&speed,2,0,false,false); 									// Emission de la vitesse du véhicule
			speed_reemit_ms=0; 																// on a plus besoin d'envoyer l'accusé de réception
			LOG_SEND_CAN(r,SPEED_DATA,2,sec,ms)
		}
	}
	if(blinkl_ack==1)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_BLINK_FRONT||TRACE_BLINK_LF||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F,"An ACK paquet for blink_left is still remaining",sec,ms)
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for Blink_left_front_ack",sec,ms)
			r=can_putd(BLINK_LEFT_FRONT_ACK,null,0,0,false,false); 							// Emission de l'accusé de réception
			blinkl_ack=0; 																	// on a plus besoin d'envoyer l'accusé de réception
			LOG_SEND_CAN(r,BLINK_LEFT_FRONT_ACK,0,sec,ms)
		}
	}
	else if(blinkr_ack==1)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_BLINK_FRONT||TRACE_BLINK_RF||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F,"An ACK paquet for blink_right is still remaining",sec,ms)
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for Blink_right_front_ack",sec,ms)
			r=can_putd(BLINK_RIGHT_FRONT_ACK,null,0,0,false,false);							// Emission de l'accusé de réception
			blinkr_ack=0; 																	// On a plus besoin d'envoyer l'accusé de réception
			LOG_SEND_CAN(r,BLINK_RIGHT_FRONT_ACK,0,sec,ms)
		}
	}
	else if(light_ack==1)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_F,"An ACK paquet for light is still remaining",sec,ms)
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for light_front_ack",sec,ms)
			r=can_putd(LIGHT_FRONT_ACK,&light,1,0,false,false); 							//emission de l'accusé de réception
			light_ack=0; 																	// on a plus besoin d'envoyer l'accusé de réception
			LOG_SEND_CAN(r,LIGHT_FRONT_ACK,0,sec,ms)
		}
	}
}