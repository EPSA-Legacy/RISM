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
//		Version 1.03 - BLD - 18/12/2011 -> recalibrage timer   //
//		Version 1.04 - BLD - 24/01/2012 -> commande feu corr   //
//		Version 1.05 - BLD - 14/02/2012 -> encapsulation debug //
//		Version 1.06 - BLD - 20/03/2012 -> patch extended id   //
//                                                             //
/////////////////////////////////////////////////////////////////

#define CAN_USE_EXTENDED_ID         FALSE


#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>


// Assignation des sorties analogiques
#define CLIGNO_L                PIN_A0
#define CLIGNO_R                PIN_A1
#define CODE                    PIN_A2
#define FEUX     		        PIN_A3
#define WARNING					PIN_A4

#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compt� � l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime

int16 tmp=0;						           // variable temporaire

int8 blinkl=0;								   // �tat des clignotants gauches 1 si actif 0 sinon
int8 blinkr=0;								   // �tat des clignotants droits 1 si actif 0 sinon
int8 light=0;								   // �tat des feux 0=�teint 1=code 2=phares 
int8 blinkfrontrack_count=0;				   // ACK clignotant avant droit vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 blinkbackrack_count=0;                    // ACK clignotant arri�re droit vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 blinkfrontlack_count=0;				   // ACK clignotant avant gauche vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 blinkbacklack_count=0;                    // ACK clignotant arri�re gauche vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 lightfrontack_count=0;					   // ACK feux avant vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 lightbackack_count=0;					   // ACK feux arri�re vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
unsigned int16 light_reemit_ms=0;			   // temps depuis la derni�re �mission du message
unsigned int16 blinkr_reemit_ms=0;			   // temps depuis la derni�re �mission du message
unsigned int16 blinkl_reemit_ms=0;	           // temps depuis la derni�re �mission du message


// Prototypes de fonctions
#inline
void listenCAN();

#inline
void sendCAN();

#inline
void internalLogic();


// M�thode d'interruption du timer 2
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
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
	setup_adc(ADC_OFF);                 //Pas de conversion num�riques/analogiques


	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);   //setup up timer2 to interrupt every 1ms
	can_init();							//initialise le CAN
	restart_wdt();

	CHECK_PWUP								  //on v�rifie que le d�marrage est du � une mise sous tension et non un watchdog

	//  BOUCLE DE TRAVAIL
	while(TRUE)
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
void listenCAN()        // Fonction assurant la r�ception des messages sur le CAN et la redirection de ces derniers
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;
	int r=0;			// flag assurant la bonne lecture de la donn�e sur le CAN

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in ListenCAN",sec,ms)

	if(can_kbhit())                                // Une donn�e est pr�sente dans le buffer de r�ception du CAN
	{
		LOG_DEBUG(TRACE_CAN,"Something hit the CAN bus",sec,ms)
		if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on r�cup�re le message
		{
			r=1;
			LOG_DEVELOPMENT_LD(TRACE_CAN||TRACE_ALL,"CAN RX - ID ",rxId,sec,ms)

			switch(rxId)                           // en fonction de l'id on le traite sp�cifiquement
			{
				case BLINK_RIGHT_BACK_ACK:
				{	
					if(rxData[0]==blinkr) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant arri�re droit
					{	
						blinkbackrack_count=0;	   // On ne doit plus envoyer le message 
						LOG_TESTING_D(TRACE_ALL||TRACE_ACK,"A relevant blink right back ack was just catch ",rxData[0],sec,ms)
					}
					break;
				}
				case BLINK_LEFT_BACK_ACK:
				{	
					if(rxData[0]==blinkl) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant arri�re gauche
					{
						blinkbacklack_count=0;	   // On ne doit plus envoyer le message 
						LOG_TESTING_D(TRACE_ALL||TRACE_ACK,"A relevant blink left back ack was just catch ",rxData[0],sec,ms)
					}
					break;
				}
				case BLINK_RIGHT_FRONT_ACK:
				{	
					if(rxData[0]==blinkr) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant avant droit	
					{
						blinkfrontrack_count=0;	   // On ne doit plus envoyer le message 
						LOG_TESTING_D(TRACE_ALL||TRACE_ACK,"A relevant blink right front ack was just catch ",rxData[0],sec,ms)
					}
					break;
				}
				case BLINK_LEFT_FRONT_ACK:
				{	
					if(rxData[0]==blinkl) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant avant gauche	
					{
						blinkfrontlack_count=0;	   // On ne doit plus envoyer le message 
						LOG_TESTING_D(TRACE_ALL||TRACE_ACK,"A relevant blink left front ack was just catch ",rxData[0],sec,ms)
					}
					break;
				}
				case LIGHT_FRONT_ACK:
				{	
					if(rxData[0]==light) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du feux
					{
						lightfrontack_count=0;	   // On ne doit plus envoyer le message 
						LOG_TESTING_D(TRACE_ALL||TRACE_ACK,"A relevant light front ack was just catch ",rxData[0],sec,ms)
					}
					break;
				}
				case LIGHT_BACK_ACK:
				{	
					if(rxData[0]==light) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du feux
					{
						lightbackack_count=0;			   // On ne doit plus envoyer le message 
						LOG_TESTING_D(TRACE_ALL||TRACE_ACK,"A relevant light back ack was just catch ",rxData[0],sec,ms)
					}
					break;
				}
			}
		}
	LOG_LISTEN_CAN(r,rxStat,rxId,rxLen,sec,ms)
	}
}

#inline
void internalLogic() //Fonction en charge de la gestion des fonctionnalit�s de la carte
{
	int1 data;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in ListenCAN",sec,ms)
	// GESTION DES WARNINGS

 	data=input(WARNING);
	if(data==1)
	{
		blinkl=data;							    // on affecte l'�tat correspondant au clignotant gauche
		blinkr=data;						    	// on affecte l'�tat correspondant au clignotant droit
		blinkbacklack_count=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkfrontlack_count=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkbackrack_count=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkfrontlack_count=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkl_reemit_ms=TR_BLINK+1;				// on force l'emission du message d�s que possible
		blinkr_reemit_ms=TR_BLINK+1;				// on force l'emission du message d�s que possible
		LOG_TESTING(TRACE_ALL||TRACE_ALL_CMD||TRACE_CMD_WARNING,"Warning status has changed and is now ON",sec,ms)
	}
	else // La gestion des clignotants est effective que en l'absence des warnings
	{
		// GESTION DU CLINOTANT GAUCHE
	//	LOG_TESTING_D(TRACE_ALL||TRACE_ALL_CMD||TRACE_CMD_BLINK_L,"Blink left status has changed and is now",data,sec,ms)
		data=input(CLIGNO_L);
		if(data!=blinkl)
		{
			blinkl=data;									  // on change l'�tat du clignotant droit
			blinkbacklack_count=5;							  // on pr�voit d'envoyer 5 fois le message
			blinkfrontlack_count=5;							  // on pr�voit d'envoyer 5 fois le message
			blinkl_reemit_ms= TR_BLINK+1;					  // on force l'�mission instantann�e
			LOG_TESTING_D(TRACE_ALL||TRACE_ALL_CMD||TRACE_CMD_BLINK_L,"Blink left status has changed and is now",blinkl,sec,ms)
		}

		// GESTION DU CLIGNOTANT DROIT

		data=input(CLIGNO_R);								  // on lit l'�tat du clignotant droit
		if(data!=blinkr)
		{
			blinkr=data;									  // on change l'�tat du clignotant droit
			blinkbackrack_count=5;							  // on pr�voit d'envoyer 5 fois le message
			blinkfrontrack_count=5;							  // on pr�voit d'envoyer 5 fois le message
			blinkr_reemit_ms= TR_BLINK+1;					  // on force l'�mission instantann�e
			LOG_TESTING_D(TRACE_ALL||TRACE_ALL_CMD||TRACE_CMD_BLINK_L,"Blink right status has changed and is now",blinkr,sec,ms)
		}
	}

	// GESTION DES FEUX

	data=input(CODE);									 	  // on lit l'�tat du feu
	if(data==1 && light!=1)								      // les feux sont en mode code et ne l'�taient pas avant
	{
		light=1;                                              // on change l'�tat du feu
		lightfrontack_count=5;                                // on pr�voit d'envoyer 5 fois le message au maximum
		lightbackack_count=5;								  // on pr�voit d'envoyer 5 fois le message au maximum
		light_reemit_ms=TR_LIGHT+1;							  // on force l'�mission du message
		LOG_TESTING(TRACE_ALL||TRACE_ALL_CMD||TRACE_CMD_LIGHT||TRACE_CMD_CODE,"Light status has changed. Codes are now enable ",sec,ms)
	}

	data=input(FEUX);
	if(data==1 && light!=2)						   		      // si les feux sont actifs et qu'ils ne l'�taient pas avant
	{
		light=2;                                              // on change l'�tat du feu
		lightfrontack_count=5;                                // on pr�voit d'envoyer 5 fois le message au maximum
		lightbackack_count=5;							      // on pr�voit d'envoyer 5 fois le message au maximum
		light_reemit_ms=TR_LIGHT+1;							  // on force l'�mission du message
		LOG_TESTING(TRACE_ALL||TRACE_ALL_CMD||TRACE_CMD_LIGHT||TRACE_CMD_FEUX,"Light status has changed. Feux are now enable ",sec,ms)
	}

	if(input(FEUX)==0 && input(CODE)==0 && light!=0)
	{
		light=0;
		lightfrontack_count=5;                                // on pr�voit d'envoyer 5 fois le message au maximum
		lightbackack_count=5;							      // on pr�voit d'envoyer 5 fois le message au maximum
		light_reemit_ms=TR_LIGHT+1;							  // on force l'�mission du message
		LOG_TESTING(TRACE_ALL||TRACE_ALL_CMD||TRACE_CMD_LIGHT||TRACE_CMD_FEUX,"Light status has changed. All light are shutdown  ",sec,ms)
	}

}

#inline
void sendCAN()
{
	int r;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in SendCAN",sec,ms)

	//GESTION DES CLIGNOTANTS GAUCHES

	if((blinkbacklack_count>=1 || blinkfrontlack_count>=1) && blinkl_reemit_ms>=TR_BLINK)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_CMD_BLINK_L||TRACE_ALL_CMD,"A BLINK_ORDER_LEFT packet must be sent",sec,ms)
		LOG_DEVELOPMENT_D(TRACE_ALL||TRACE_EXEC||TRACE_CMD_BLINK_L||TRACE_ALL_CMD,"Remaining left blink front ack ",blinkfrontlack_count,sec,ms)
		LOG_DEVELOPMENT_D(TRACE_ALL||TRACE_EXEC||TRACE_CMD_BLINK_L||TRACE_ALL_CMD,"Remaining left blink back ack ",blinkbacklack_count,sec,ms)
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for blink_order_left ",sec,ms)
			r=can_putd(BLINK_ORDER_LEFT,&blinkl,1,0,false,false); 			//emission de l'ordre d'�clairage des clignotants gauches
			if(blinkbacklack_count>=1)
			{
				blinkbacklack_count--;		     							//on d�cr�mente le nombre de r�emission restante
			}
			if(blinkfrontlack_count>=1)
			{
				blinkfrontlack_count--;										//on d�cr�mente le nombre de r��mission restante
			}
			blinkl_reemit_ms=0;								 				//maz du compteur de temps d'emission
			LOG_SEND_CAN(r,BLINK_ORDER_LEFT,1,sec,ms)
		}
	}

	//GESTION DES CLIGNOTANTS DROITS

	if((blinkbackrack_count>=1 || blinkfrontrack_count>=1) && blinkr_reemit_ms>=TR_BLINK)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_CMD_BLINK_R,"A BLINK_ORDER_RIGHT packet must be sent",sec,ms)
		LOG_DEVELOPMENT_D(TRACE_ALL||TRACE_EXEC||TRACE_CMD_BLINK_R||TRACE_ALL_CMD,"Remaining right blink front ack ",blinkfrontrack_count,sec,ms)
		LOG_DEVELOPMENT_D(TRACE_ALL||TRACE_EXEC||TRACE_CMD_BLINK_R||TRACE_ALL_CMD,"Remaining right blink back ack ",blinkbackrack_count,sec,ms)
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for blink_order_right",sec,ms)
			r=can_putd(BLINK_ORDER_RIGHT,&blinkr,1,0,false,false); 			//emission de l'ordre d'�clairage des clignotants droits
			if(blinkbackrack_count>=1)
			{
				blinkbackrack_count--;		     							//on d�cr�mente le nombre de r�emission restante
			}
			if(blinkfrontrack_count>=1)
			{
				blinkfrontrack_count--;										//on d�cr�mente le nombre de r��mission restante
			}
			blinkr_reemit_ms=0;								 				//maz du compteur de temps d'emission
			LOG_SEND_CAN(r,BLINK_ORDER_LEFT,1,sec,ms)
		}
	}

	// GESTION DES CODES et FEUX

	if((lightfrontack_count>=1 || lightbackack_count>=1) && light_reemit_ms>=TR_LIGHT)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_CMD_LIGHT||TRACE_ALL_CMD,"A LIGHT_ORDER packet must be sent",sec,ms)
		LOG_DEVELOPMENT_D(TRACE_ALL||TRACE_EXEC||TRACE_CMD_LIGHT||TRACE_ALL_CMD,"Remaining light front ack ",lightfrontack_count,sec,ms)
		LOG_DEVELOPMENT_D(TRACE_ALL||TRACE_EXEC||TRACE_CMD_LIGHT||TRACE_ALL_CMD,"Remaining light back ack ",lightbackack_count,sec,ms)
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			r=can_putd(LIGHT_ORDER,&light,1,0,false,false); 		    	//emission de l'ordre d'�clairage des feux
			if(lightfrontack_count>=1)
			{
				lightfrontack_count--;		     							//on d�cr�mente le nombre de r�emission restante
			}
			if(lightbackack_count>=1)
			{
				lightbackack_count--;										//on d�cr�mente le nombre de r��mission restante
			}
			light_reemit_ms=0;								 				//maz du compteur de temps d'emission
			LOG_SEND_CAN(r,BLINK_ORDER_LEFT,1,sec,ms)
		}
	}
}

