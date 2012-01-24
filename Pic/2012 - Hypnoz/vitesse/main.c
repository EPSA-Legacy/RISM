/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Vitesse                                          //
//		Version 1.00 - BLD - 29/12/2011                        //
//		Version 1.01 - BLD - 24/01/2012 -> update gestion feux // 
//                                                             //
/////////////////////////////////////////////////////////////////

// Vitesse : regarder toutes les secondes la valeur du timer puis remettre à zéro
// OU
// Si trop lent : regarder le temps entre deux fronts montants (critère : moins de X fronts montants/seconde

// TODO : refaire la prog, timers en external pour la mesure de vitesse.

//#define CAN_USE_EXTENDED_ID         FALSE

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

// Assignation des sorties analogiques
#define PHARES_L        PIN_A1  
#define PHARES_R        PIN_A3  
#define CODES_L         PIN_B1  
#define CODES_R         PIN_C4    
#define CLIGN_L         PIN_A3  
#define CLIGN_R			PIN_A4
//#define VITESSE_A       PIN_A5  // destiné à être envoyé par CAN
//#define VITESSE_B       PIN_C0  // destiné à être envoyé par CAN


// OBSOLETE Définition des constantes caractéristiques du capteur de vitesse
#define SPEED_THRESHOLD	 	10
#define SAMPLING_SPEED_TIME 100
#define TOGGLING_PERIOD	    500
#define CST_CAPT_L			322
#define CST_CAPT_R      	322

//Mode debug commenter la ligne pour l'enlever
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

#ifdef DEBUG
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#else
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#endif
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

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
   
	#ifdef DEBUG
	   // Mise en évidence d'un problème lié au Watchdog
   	   switch ( restart_cause() )
       {
          case WDT_TIMEOUT:
          {
             printf("\r\nRestarted processor because of watchdog timeout!\r\n");
             break;
          }
          case NORMAL_POWER_UP:
          {
             printf("\r\nNormal power up! PIC initialized \r\n");
             break;
          }
       }
       restart_wdt();
    #endif

    //  BOUCLE DE TRAVAIL
    while(true)
   	{
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

	if(can_kbhit())                                // Une donnée est présente dans le buffer de réception du CAN
	{
		if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on récupère le message
		{
			switch(rxId)                           // en fonction de l'id on le traite spécifiquement
			{
				case BLINK_ORDER_LEFT:
				{		
					blinkl_ack=1;                  // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					blink_left=rxData[0];          // On change l'état du clignotant gauche
					break;
				}
				case BLINK_ORDER_RIGHT:
				{
                    blinkr_ack=1;                  // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					blink_right=rxData[0];         // On change l'état du clignotant droit
					break;
				}
				case LIGHT_ORDER:
				{
					light_ack=1;				   // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					light=rxData[0]; 			   // On éteint les feux
	  				break;
				}
			}
			#ifdef TRACE
				restart_wdt();
				tmp=ms+1000*sec;
				if((rxId==BLINK_ORDER_LEFT || rxId==BLINK_ORDER_RIGHT || rxId==LIGHT_ORDER) && rxLen>=1)
				{
					printf("\r\n [%Lu] - CAN RX - ID=%u - DATA=%u", tmp,rxId,rxData[0]);
				}
			#endif
			#ifdef TRACE_CAN
				tmp=ms+1000*sec;
				printf("\r\n [%Lu] - CAN_DEBUG - BUFF=%u - ID=%u - LEN=%u - OVF=%u", tmp,rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
			#endif
		}
		else
		{
			#ifdef TRACE_CAN
				restart_wdt();
	   		    tmp=ms+1000*sec;
				printf("[%Lu] - CAN_DEBUG - FAIL on can_getd function", tmp);
			#endif
		}
	}
}

#inline
void internalLogic()
{

	// Gestion des feux
	if(light==2)						  // On allume les phares
	{
		output_bit(PHARES_R,1);
		output_bit(PHARES_L,1);  
		output_bit(CODES_R,1);			  // On ne doit pas oublier d'allumer les codes 
		output_bit(CODES_L,1);    
		#if (TRACE_LIGHT || TRACE_ALL)
			restart_wdt();
	   		tmp=ms+1000*sec;
			printf("[%Lu] - LIGHT STATUS - Feux are enabled", tmp);	
		#endif
	}
	else if (light==1)					  // On allume les codes
	{
		output_bit(PHARES_R,0);			  // On ne doit pas oublier d'éteindre les feux 
		output_bit(PHARES_L,0);  
		output_bit(CODES_R,1);			  
		output_bit(CODES_L,1);    
		#if (TRACE_LIGHT || TRACE_ALL)
			restart_wdt();
	   		tmp=ms+1000*sec;
			printf("[%Lu] - LIGHT STATUS - Codes are enabled", tmp);	
		#endif
	}
	else								  // On éteint tout
	{
		output_bit(PHARES_R,0);			 
		output_bit(PHARES_L,0);  
		output_bit(CODES_R,0);			  
		output_bit(CODES_L,0);   
		#if (TRACE_LIGHT || TRACE_ALL)
			restart_wdt();
	   		tmp=ms+1000*sec;
			printf("[%Lu] - LIGHT STATUS - All light are off", tmp);	
		#endif 
	}	
    
	// Gestion des clignotants
	if(clign_ms >= 650)                                   // 650 ms = +- 1.5Hz après l'activation du timer = frequence desclign_msotants
	{
		clign_ms = 0;                                     // repartir pour 500 ms
		blink_status = !blink_status ;                    // changer l'état d'allumage desclign_msotants
		
		output_bit(CLIGN_R, blink_status & blink_right); // allumer ou éteindre le clignotant droit s'il est activé
		output_bit(CLIGN_L, blink_status & blink_left);  // allumer ou éteindre le clignotant gauche s'il est activé
		#if (TRACE_BLINK || TRACE_ALL)
			restart_wdt();
	        tmp=ms+1000*sec;
			printf("[%Lu] - INFO - Blink status has been toggled", tmp);	
		#endif
	}

	//Gestion de l'acquisition de la vitesse
    
	//Explication :



	// ## Roue gauche ##
	//		# Acquisition
    if(measuring_modeL == HIGH_SPEED)						       		   				// Si on est en mode de mesure rapide
    {
        if(timeL_ms >= SAMPLING_SPEED_TIME)		
        {
            speedL = (int16)((get_timer0() * CST_CAPT_L) / 100); 						// On a désormais la vitesse en ??
            set_timer0(0);																// On remet le timer de la roue gauche à zéro
			timeL_ms=0;																	// On remet le compteur de temps à 0.
			#if(TRACE_SPEED_ALL || TRACE_SPEED_LEFT || TRACE_ALL)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - HIGH SPEED LEFT - %Lu", tmp,speedL);
			#endif
        }
    }
    else																				// Si on est en mode de mesure lent
    {
        if(get_timer0() >= 1)
        {
            speedL = (int16)((CST_CAPT_L * 10 * get_timer0()) / (timeL_ms+clock/10));	// On a désormais la vitesse en ??
            set_timer0(0);																// On remet le timer de la roue gauche à zéro
            timeL_ms = 0;																// On remet le compteur temporel à 0
			#if(TRACE_SPEED_ALL || TRACE_SPEED_LEFT || TRACE_ALL)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - LOW SPEED LEFT - %Lu", tmp,speedL);
			#endif
        }
    }
	//		# Mise à jour du mode de mesure
	if(speed_modeL_ms >= TOGGLING_PERIOD)												// On vérifie que l'on a pas permuter le mode d mesure trop récemment
	{
		if(speedL <= SPEED_THRESHOLD)													// On est en dessous du seuil on passe en mode de mesure lent
		{
			measuring_modeL=LOW_SPEED;
			speed_modeL_ms=0;															// on remet à zéro le compteur de changement de mode
			#if(TRACE_SPEED_ALL || TRACE_SPEED_LEFT || TRACE_SPEED_MODE)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - SPEED - Measurement left mode is now low_speed", tmp);
			#endif
		}
		else																			// Sinon on est en mode rapide 
		{
			measuring_modeL=HIGH_SPEED;
			speed_modeL_ms=0;															// on remet le compteur de changement de mode à zéro
			#if(TRACE_SPEED_ALL || TRACE_SPEED_LEFT|| TRACE_SPEED_MODE)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - SPEED - Measurement left mode is now high_speed", tmp);
			#endif
		}
	}

	// ## Roue droite ##
	//		# Acquisition
    if(measuring_modeR == HIGH_SPEED)													// Si on est en mode de mesure rapide
    {
        if(timeR_ms == 500)
        {
            speedR = (int16)((get_timer1() * CST_CAPT_R) / 100);						// On a désormais la vitesse en ??
            set_timer1(0);																// On remet le timer de la roue droite à zéro
			timeR_ms = 0;															  	// On remet le compteur de temps à 0.
			#if(TRACE_SPEED_ALL || TRACE_SPEED_RIGHT || TRACE_ALL)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - HIGH SPEED RIGHT - %Lu", tmp,speedR);
			#endif
        }
    }
    else																			  	// Si on est en mode de mesure lent
    {
        if(get_timer1() >= 1)
        {
            speedR = (int16)((CST_CAPT_R * 10 * get_timer1()) / (timeR_ms+clock/10)); 	// On a désormais la vitesse en ??
            set_timer1(0); 															  	// On remet le timer de la roue droite à zéro
			timeR_ms = 0;														      	// On remet le compteur de temps à 0.
			#if(TRACE_SPEED_ALL || TRACE_SPEED_RIGHT || TRACE_ALL)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - LOW SPEED RIGHT - %Lu", tmp,speedR);
			#endif
        }
    }
	//		# Mise à jour du mode de mesure
	if(speed_modeR_ms >= TOGGLING_PERIOD)												// On vérifie que l'on a pas permuter le mode d mesure trop récemment
	{
		if(speedR <= SPEED_THRESHOLD)													// On est en dessous du seuil on passe en mode de mesure lent
		{
			measuring_modeL=LOW_SPEED;
			speed_modeR_ms=0;															// on remet à zéro le compteur de changement de mode
			#if(TRACE_SPEED_ALL || TRACE_SPEED_RIGHT || TRACE_SPEED_MODE)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - SPEED - Measurement right mode  is now low_speed", tmp);
			#endif
		}
		else																			// Sinon on est en mode rapide 
		{
			measuring_modeL=HIGH_SPEED;
			speed_modeR_ms=0;															// on remet le compteur de changement de mode à zéro
			#if(TRACE_SPEED_ALL || TRACE_SPEED_RIGHT || TRACE_SPEED_MODE)
				restart_wdt();
	       		tmp=ms+1000*sec;
				printf("[%Lu] - SPEED - Measurement right mode is now high_speed", tmp);
			#endif
		}
	}


	// Gestion des dépassement de taille des variables
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

}

#inline
void sendCAN()
{
	int r;

	if(speed_reemit_ms >= TR_SPEED)															// On envoie la vitesse si l'on a dépassé le reemit time
	{
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			r=can_putd(SPEED_DATA,&speed,2,0,false,false); 									// Emission de la vitesse du véhicule
			speed_reemit_ms=0; 																// on a plus besoin d'envoyer l'accusé de réception
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%Lu",tmp, r, SPEED_DATA,2,speed);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
	if(blinkl_ack==1)
	{
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_LEFT_FRONT_ACK,null,0,0,false,false); 							// Emission de l'accusé de réception
			blinkl_ack=0; 																	// on a plus besoin d'envoyer l'accusé de réception
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BLINK_LEFT_FRONT_ACK,1,blink_left);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
	else if(blinkr_ack==1)
	{
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_RIGHT_FRONT_ACK,null,0,0,false,false);							// Emission de l'accusé de réception
			blinkr_ack=0; 																	// On a plus besoin d'envoyer l'accusé de réception
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BLINK_RIGHT_FRONT_ACK,1,blink_right);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
	else if(light_ack==1)
	{
		if(can_tbe()) 																		// On vérifie que le buffer d'emission est libre
		{
			r=can_putd(LIGHT_FRONT_ACK,&light,1,0,false,false); 							//emission de l'accusé de réception
			light_ack=0; 																	// on a plus besoin d'envoyer l'accusé de réception
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, LIGHT_FRONT_ACK,1,light);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
}