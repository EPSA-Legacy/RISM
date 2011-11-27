/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Tableau de Bord                                  //
//		Version 1.00 - BLD - 16/11/2011                        //
//		Version 1.01 - BLD - 27/11/2011 -> renommage variable  //	
//		Version 1.02 - BLD - 27/11/2011 -> trace modes         //		
//                                                             //
/////////////////////////////////////////////////////////////////


// TODO: Gerer les warnings

#include <18F258.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//#define CAN_USE_EXTENDED_ID         FALSE

// Assignation des sorties analogiques
#define CLIGNO_L                PIN_A0
#define CLIGNO_R                PIN_A1
#define CODE                    PIN_A2
#define FEUX     		        PIN_A3
#define WARNING					PIN_A4

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define TRACE_ALLLIGHT	1
#define TRACE_WARN 1
#define TRACE_BLINK 1
#define TRACE_LIGHT 1
#define TRACE_CAN 1

#ifdef DEBUG
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#else
	#fuses HS,NOPROTECT,NOLVP,WDT
#endif
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime

int16 tmp=0;						           // variable temporaire

int8 blinkl=0;								   // état des clignotants gauches 1 si actif 0 sinon
int8 blinkr=0;								   // état des clignotants droits 1 si actif 0 sinon
int8 light=0;								   // état des feux 0=éteint 1=code 2=phares 
int8 warn=0;								   // état des warning 1=activé, 0=éteint
int8 blinkfrontrack_count=0;						   // ACK clignotant avant droit vaut 0 si l'on a reçu un paquet d'accusé de réception, le nombre de réemmission restante sinon
int8 blinkbackrack_count=0;                          // ACK clignotant arrière droit vaut 0 si l'on a reçu un paquet d'accusé de réception, le nombre de réemmission restante sinon
int8 blinkfrontlack_count=0;						   // ACK clignotant avant gauche vaut 0 si l'on a reçu un paquet d'accusé de réception, le nombre de réemmission restante sinon
int8 blinkbacklack_count=0;                          // ACK clignotant arrière gauche vaut 0 si l'on a reçu un paquet d'accusé de réception, le nombre de réemmission restante sinon
int8 lightfrontack_count=0;						   // ACK feux avant vaut 0 si l'on a reçu un paquet d'accusé de réception, le nombre de réemmission restante sinon
int8 lightbacktack_count=0;						   // ACK feux arrière vaut 0 si l'on a reçu un paquet d'accusé de réception, le nombre de réemmission restante sinon
unsigned int16 light_reemit_ms=0;				   // temps depuis la dernière émission du message
unsigned int16 blinkr_reemit_ms=0;				   // temps depuis la dernière émission du message
unsigned int16 blinkl_reemit_ms=0;	               // temps depuis la dernière émission du message


// Prototypes de fonctions
#inline
void listenCAN();

#inline
void sendCAN();

#inline
void internalLogic();


// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
	 ms++;
     light_reemit_ms++;
	 blinkr_reemit_ms++;
	 blinkl_reemit_ms++;
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
	setup_adc(ADC_OFF);                 //Pas de conversion numériques/analogiques

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,79,16);   //setup up timer2 to interrupt every 1ms
	can_init();							//initialise le CAN
	can_set_baud();						//obsolète à priori à tester
	restart_wdt();

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
	while(TRUE)
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
				case BLINK_RIGHT_BACK_ACK:
				{	
					if(rxData[0]==blinkr) 		   // il s'agit bien d'un accusé de réception pour l'état courant du clignotant arrière droit	
					blinkbackrack_count=0;			   // On ne doit plus envoyer le message 
					break;
				}
				case BLINK_LEFT_BACK_ACK:
				{	
					if(rxData[0]==blinkl) 		   // il s'agit bien d'un accusé de réception pour l'état courant du clignotant arrière gauche
						blinkbacklack_count=0;	  	   // On ne doit plus envoyer le message 
					break;
				}
				case BLINK_RIGHT_FRONT_ACK:
				{	
					if(rxData[0]==blinkr) 		   // il s'agit bien d'un accusé de réception pour l'état courant du clignotant avant droit	
						blinkfrontrack_count=0;		   // On ne doit plus envoyer le message 
					break;
				}
				case BLINK_LEFT_FRONT_ACK:
				{	
					if(rxData[0]==blinkl) 		   // il s'agit bien d'un accusé de réception pour l'état courant du clignotant avant gauche	
						blinkfrontlack_count=0;	   	   // On ne doit plus envoyer le message 
					break;
				}
				case LIGHT_FRONT_ACK:
				{	
					if(rxData[0]==light) 		   // il s'agit bien d'un accusé de réception pour l'état courant du feux
						lightfrontack_count=0;	   	   // On ne doit plus envoyer le message 
					break;
				}
				case LIGHT_BACK_ACK:
				{	
					if(rxData[0]==light) 		   // il s'agit bien d'un accusé de réception pour l'état courant du feux
						lightbacktack_count=0;			   // On ne doit plus envoyer le message 
					break;
				}
			}

		#ifdef TRACE_ALLLIGHT
			restart_wdt();
			tmp=ms+1000*sec;
			if((rxId==BLINK_RIGHT_BACK_ACK) && rxLen>=1)
			{
				printf("\r\n [%Lu] - CAN RX - ID=%u - DATA=%u", tmp,rxId,rxData[0]);
			}	
			else if((rxId==BLINK_LEFT_BACK_ACK) && rxLen>=1)
			{
				printf("\r\n [%Lu] - CAN RX - ID=%u - DATA=%u", tmp,rxId,rxData[0]);
			}
			else if((rxId==BLINK_RIGHT_FRONT_ACK) && rxLen>=1)
			{
				printf("\r\n [%Lu] - CAN RX - ID=%u - DATA=%u", tmp,rxId,rxData[0]);
			}
			else if((rxId==BLINK_LEFT_FRONT_ACK) && rxLen>=1)
			{
				printf("\r\n [%Lu] - CAN RX - ID=%u - DATA=%u", tmp,rxId,rxData[0]);
			}
			else if((rxId==LIGHT_FRONT_ACK) && rxLen>=1)
			{
				printf("\r\n [%Lu] - CAN RX - ID=%u - DATA=%u", tmp,rxId,rxData[0]);
			}
			else if((rxId==LIGHT_BACK_ACK) && rxLen>=1)
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
void internalLogic() //Fonction en charge de la gestion des fonctionnalités de la carte
{
	int8 data;

	// GESTION DES WARNINGS

 	data=input(WARNING);
	if(data!=warn)
	{
		warn=data;								// on affecte la nouvelle valeur
		blinkl=data;							// on affecte l'état correspondant au clignotant gauche
		blinkr=data;							// on affecte l'état correspondant au clignotant droit
		blinkbacklack_count=5;						// on prévoit d'envoyer 5 messages au maximum
		blinkfrontlack_count=5;						// on prévoit d'envoyer 5 messages au maximum
		blinkbackrack_count=5;						// on prévoit d'envoyer 5 messages au maximum
		blinkfrontlack_count=5;						// on prévoit d'envoyer 5 messages au maximum
		blinkl_reemit_ms=TR_BLIGHT+1;				// on force l'emission du message dès que possible
		blinkr_reemit_ms=TR_BLIGHT+1;				// on force l'emission du message dès que possible
		#if (TRACE_WARN || TRACE_ALLLIGHT)
			restart_wdt();
			tmp=ms+1000*sec;
			if(blinkl==1)
				printf("[%Lu] - INFO - Warning status has changed. Warning are now enable ", tmp);
			else
				printf("[%Lu] - INFO - Warning status has changed. Warning is now disable ", tmp);
		#endif

	}

	if(warn==0) // La gestion des clignotants est effective que en l'absence des warnings
	{
		// GESTION DU CLINOTANT GAUCHE

		data=input(CLIGNO_L);								  // on lit l'état du clignotant gauche
		if(data!=blinkl)
		{
			blinkl=data;									  // on change l'état du clignotant droit
			blinkbacklack_count=5;								  // on prévoit d'envoyer 5 fois le message
			blinkfrontlack_count=5;								  // on prévoit d'envoyer 5 fois le message
			blinkl_reemit_ms= TR_BLIGHT+1;						  // on force l'émission instantannée
			#if (TRACE_BLINK || TRACE_ALLLIGHT)
				restart_wdt();
				tmp=ms+1000*sec;
				if(blinkl==1)
					printf("[%Lu] - INFO - Left blink status has changed. Left blink is now enable ", tmp);
				else
					printf("[%Lu] - INFO - Left blink status has changed. Left blink is now disable ", tmp);
			#endif
		}

		// GESTION DU CLIGNOTANT DROIT

		data=input(CLIGNO_R);								  // on lit l'état du clignotant droit
		if(data!=blinkr)
		{
			blinkr=data;									  // on change l'état du clignotant droit
			blinkbackrack_count=5;								  // on prévoit d'envoyer 5 fois le message
			blinkfrontrack_count=5;								  // on prévoit d'envoyer 5 fois le message
			blinkr_reemit_ms= TR_BLIGHT+1;						  // on force l'émission instantannée
			#if  (TRACE_BLINK || TRACE_ALLLIGHT)
				restart_wdt();
				tmp=ms+1000*sec;
				if(blinkl==1)
					printf("[%Lu] - INFO - Right blink status has changed. Right blink is now enable ", tmp);
				else
					printf("[%Lu] - INFO - Right blink status has changed. Right blink is now disable ", tmp);
			#endif
		}
	}
	// GESTION DES FEUX

	data=input(CODE);									  // on lit l'état du feu
	if(data==1)										      // les feux sont en mode code
	{
		light=data;                                       // on change l'état du feu
		lightfrontack_count=5;                                  // on prévoit d'envoyer 5 fois le message au maximum
		lightbacktack_count=5;									  // on prévoit d'envoyer 5 fois le message au maximum
		light_reemit_ms=TR_LIGHT+1;						  // force l'envoi du message le plus rapidement possible
		#if  (TRACE_LIGHT || TRACE_ALLLIGHT)
			restart_wdt();
	        tmp=ms+1000*sec;
			if(light==1)
				printf("[%Lu] - INFO - Light status has changed. Code is now enable ", tmp);
		#endif
	}
	else
	{
		data=input(FEUX);
		light=data;                                       // on change l'état du feu
		lightfrontack_count=5;                                  // on prévoit d'envoyer 5 fois le message au maximum
		lightbacktack_count=5;									  // on prévoit d'envoyer 5 fois le message au maximum
		light_reemit_ms=TR_LIGHT+1;						  // force l'envoi du message le plus rapidement possible
		#ifdef DEBUG
			restart_wdt();
	        tmp=ms+1000*sec;
			if(light==1)
				printf("[%Lu] - INFO - Light status has changed. Feux is now enable ", tmp);
			else
				printf("[%Lu] - INFO - Light status has changed. All light are shutdown ", tmp);
		#endif
	}
}

#inline
void sendCAN()
{
	int r;

	//GESTION DES CLIGNOTANTS GAUCHES

	if((blinkbacklack_count>=1 || blinkfrontlack_count>=1) && blinkl_reemit_ms>=TR_BLINK)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_ORDER_LEFT,&blinkl,1,0,false,false); 			//emission de l'ordre d'éclairage des clignotants gauches
			if(blinkbacklack_count>=1)
			{
				blinkbacklack_count--;		     								//on décrémente le nombre de réemission restante
			}
			if(blinkfrontlack_count>=1)
			{
				blinkfrontlack_count--;											//on décrémente le nombre de réémission restante
			}
			blinkl_reemit_ms=0;								 				//maz du compteur de temps d'emission
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BLINK_ORDER_LEFT,1,blinkl);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}

	//GESTION DES CLIGNOTANTS DROITS

	if((blinkbackrack_count>=1 || blinkfrontrack_count>=1) && blinkr_reemit_ms>=TR_BLINK)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_ORDER_RIGHT,&blinkr,1,0,false,false); 			//emission de l'ordre d'éclairage des clignotants droits
			if(blinkbackrack_count>=1)
			{
				blinkbackrack_count--;		     								//on décrémente le nombre de réemission restante
			}
			if(blinkfrontrack_count>=1)
			{
				blinkfrontrack_count--;											//on décrémente le nombre de réémission restante
			}
			blinkr_reemit_ms=0;								 				//maz du compteur de temps d'emission
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BLINK_ORDER_RIGHT,1,blinkr);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}

	// GESTION DES CODES et FEUX

	if((lightfrontack_count>=1 || lightbacktack_count>=1) && light_reemit_ms>=TR_LIGHT)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(LIGHT_ORDER,&light,1,0,false,false); 		    	//emission de l'ordre d'éclairage des feux
			if(lightfrontack_count>=1)
			{
				lightfrontack_count--;		     								//on décrémente le nombre de réemission restante
			}
			if(lightbacktack_count>=1)
			{
				lightbacktack_count--;										     	//on décrémente le nombre de réémission restante
			}
			light_reemit_ms=0;								 				//maz du compteur de temps d'emission
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, LIGHT_ORDER,1,light);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}



}

