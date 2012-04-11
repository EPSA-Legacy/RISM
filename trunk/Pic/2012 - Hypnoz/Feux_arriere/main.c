/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Feux Arrières                                    //
//		Version 1.00  - BLD - 24/10/2011                       //
//      Version 1.01  - BLD - 27/11/2011 -> renommage variable //    
//	    Version 1.02  - BLD - 27/11/2011 -> trace debug        //
//		Version 1.03  - BLD - 18/12/2011 -> recalibrage timer  //
//      Version 1.04  - BLD - 12/02/2012 -> encapsulation debug//
//		Version 2.00  - BLD - 11/04/2012 -> tests unitaires OK //
//			                                                   //
/////////////////////////////////////////////////////////////////
#define CAN_USE_EXTENDED_ID         FALSE


#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>



// Assignation des sorties analogiques
#define FEUX            PIN_A0
#define CLIGN_L         PIN_A1
#define CLIGN_R         PIN_A2
#define FEUX_STOP       PIN_A3

#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime
unsigned int16 clign_ms=0;                     // variable temporelle pour leclign_msotant

int16 tmp=0;						           // variable temporaire

int1 blinkl_ack=0;                             // flag valant 1 lorsqu'il faut envoyer l'accusé de réception du message BLINK_ORDER_LEFT
int1 blinkr_ack=0;                             // flag valant 1 lorsqu'il faut envoyer l'accusé de réception du message BLINK_ORDER_RIGHT
int1 light_ack=0;                              // flag valant 1 lorsqu'il faut envoyer l'accusé de réception du message LIGHT_ORDER
int1 blink_left=0;                             // état duclign_msotant gauche 1=>commandé 0=>éteint
int1 blink_right=0;                            // état duclign_msotant droit 1=>commandé 0=>éteint
int1 blink_status=0;                           // variable toggle à la fréquence desclign_msotants
int1 brake=0;                                  // état des feux stops
int1 light=0;                                  // état des feux de croisement

// Prototypes de fonctions

void listenCAN();

void sendCAN();


void internalLogic();


// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
	 ms++;
    clign_ms++;
     if(ms>=1000)
	 {
		ms=0;
		sec++;
	 }
}

#org DEFAULT
void main()
{
	//initialisation du PIC
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
	setup_adc_ports(NO_ANALOGS);        //on gère toutes les entrées comme étant de type numérique

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);   //setup up timer2 to interrupt every 1ms
	can_init();							//initialise le CAN
	restart_wdt();

	CHECK_PWUP						    //on vérifie que le démarrage est du à une mise sous tension et non un watchdog

	//  BOUCLE DE TRAVAIL
	while(TRUE)
	{
		delay_ms(5);
		restart_wdt();
		listenCAN();

		restart_wdt();
		internalLogic();

		restart_wdt();
		sendCAN();
	}
}


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
				case BRAKE_ORDER:
				{		
					brake=rxData[0];			   // On change l'état des feux stops
					LOG_TESTING_D(TRACE_ALL||TRACE_BRAKE_LIGHT,"Brake light status incomming from the CAN is ",rxData[0],sec,ms)
					break;
				}
				case BLINK_ORDER_LEFT:
				{		
					blinkl_ack=1;                  // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					blink_left=rxData[0];          // On change l'état duclign_msotant gauche
					LOG_TESTING_D(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_R||TRACE_BLINK_BACK||TRACE_BLINK_LB,"Blink (left) status incomming from the CAN is ",rxData[0],sec,ms)
					break;
				}
				case BLINK_ORDER_RIGHT:
				{
                    blinkr_ack=1;                  // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					blink_right=rxData[0];         // On change l'état duclign_msotant droit
					LOG_TESTING_D(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_R||TRACE_BLINK_BACK||TRACE_BLINK_RB,"Blink (right) status incomming from the CAN is ",rxData[0],sec,ms)
					break;
				}
				case LIGHT_ORDER:
				{
					light_ack=1;				   // On place le flag à 1 pour envoyer l'accusé de réception ultérieurement
					if(rxData[0]==0)
					{
						light=0; 				   // On éteint les feux
	  				}           
					else
					{
						light=1;				   // On allume les feux
					}
					LOG_TESTING_D(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_R||TRACE_LIGHT_BACK,"Light status incomming from the CAN is ",rxData[0],sec,ms)
					LOG_TESTING_D(TRACE_ALL||TRACE_ALL_LIGHT||TRACE_ALL_LIGHT_R||TRACE_LIGHT_BACK,"Light status is now ",light,sec,ms)
					break;
				}
			}
			LOG_LISTEN_CAN(r,rxStat,rxId,rxLen,sec,ms)
		}
	}
}


void internalLogic() //Fonction en charge de la gestion des fonctionnalités de la carte
{

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in internalLogic",sec,ms)
	//gestion des feux stops et arrières
	output_bit(FEUX_STOP, brake);                         // si brake est à true, allumer les feux stop, et inversement
	output_bit(FEUX, light);                              // si light est à true, allumer les feux arrière, et inversement


	if(clign_ms >= 650)                                   // 650 ms = +- 1.5Hz après l'activation du timer = frequence desclign_msotants
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_BLINK_BACK,"Blink status has been toggled",sec,ms)
		clign_ms = 0;                                     // repartir pour 500 ms
		blink_status = !blink_status ;                    // changer l'état d'allumage desclign_msotants
		
		output_bit(CLIGN_R, blink_status & blink_right); // allumer ou éteindre le clignotant droit s'il est activé
		output_bit(CLIGN_L, blink_status & blink_left);  // allumer ou éteindre le clignotant gauche s'il est activé
	}
}


void sendCAN()
{
	int r;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in SendCAN",sec,ms)

	if(blinkl_ack==1)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_BLINK_BACK,"An ACK paquet for blink_left is still remaining",sec,ms)
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for blink_left ",sec,ms)
			r=can_putd(BLINK_LEFT_BACK_ACK,null,0,0,false,false); //emission de l'accusé de réception
			blinkl_ack=0; // on a plus besoin d'envoyer l'accusé de réception
			LOG_SEND_CAN(r,BLINK_LEFT_BACK_ACK,0,sec,ms)
		}
	}
	else if(blinkr_ack==1)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_BLINK_BACK,"An ACK paquet for blink_right is still remaining",sec,ms)
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for blink_right ",sec,ms)
			r=can_putd(BLINK_RIGHT_BACK_ACK,null,0,0,false,false); //emission de l'accusé de réception
			blinkr_ack=0; // on a plus besoin d'envoyer l'accusé de réception
			LOG_SEND_CAN(r,BLINK_RIGHT_BACK_ACK,0,sec,ms)
		}
	}
	else if(light_ack==1)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_BLINK_BACK,"An ACK paquet for light is still remaining",sec,ms)
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for light ",sec,ms)
			r=can_putd(LIGHT_BACK_ACK,null,0,0,false,false); //emission de l'accusé de réception
			light_ack=0; // on a plus besoin d'envoyer l'accusé de réception
	     	LOG_SEND_CAN(r,LIGHT_BACK_ACK,0,sec,ms)
		}
	}
}

