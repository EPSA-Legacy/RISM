/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Tableau de Bord                                  //
//		Version 1.0 - BLD - 16/11/2011                         //
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
#define DEBUG_VERBOSE 1

#fuses HS,NOPROTECT,NOLVP,WDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compt� � l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime

int16 tmp=0;						           // variable temporaire

int8 blinkl=0;								   // �tat des clignotants gauches 1 si actif 0 sinon
int8 blinkr=0;								   // �tat des clignotants droits 1 si actif 0 sinon
int8 light=0;								   // �tat des feux 0=�teint 1=code 2=phares 
int8 warn=0;								   // �tat des warning 1=activ�, 0=�teint
int8 blinkfrontrack=0;						   // ACK clignotant avant droit vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 blinkbackrack=0;                          // ACK clignotant arri�re droit vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 blinkfrontlack=0;						   // ACK clignotant avant gauche vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 blinkbacklack=0;                          // ACK clignotant arri�re gauche vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 lightfrontack=0;						   // ACK feux avant vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
int8 lightbackack=0;						   // ACK feux arri�re vaut 0 si l'on a re�u un paquet d'accus� de r�ception, le nombre de r�emmission restante sinon
unsigned int16 light_reemit=0;				   // temps depuis la derni�re �mission du message
unsigned int16 blinkr_reemit=0;				   // temps depuis la derni�re �mission du message
unsigned int16 blinkl_reemit=0;	               // temps depuis la derni�re �mission du message


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
     light_reemit++;
	 blinkr_reemit++;
	 blinkl_reemit++;
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
	setup_adc(ADC_OFF);                 //Pas de conversion num�riques/analogiques

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,79,16);   //setup up timer2 to interrupt every 1ms
	can_init();							//initialise le CAN
	can_set_baud();						//obsol�te � priori � tester
	restart_wdt();

	#ifdef DEBUG
	   // Mise en �vidence d'un probl�me li� au Watchdog
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
void listenCAN()        // Fonction assurant la r�ception des messages sur le CAN et la redirection de ces derniers
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;

	if(can_kbhit())                                // Une donn�e est pr�sente dans le buffer de r�ception du CAN
	{
		if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on r�cup�re le message
		{
			switch(rxId)                           // en fonction de l'id on le traite sp�cifiquement
			{
				case BLINK_RIGHT_BACK_ACK:
				{	
					if(rxData[0]==blinkr) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant arri�re droit	
					blinkbackrack=0;			   // On ne doit plus envoyer le message 
					break;
				}
				case BLINK_LEFT_BACK_ACK:
				{	
					if(rxData[0]==blinkl) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant arri�re gauche
						blinkbacklack=0;	  	   // On ne doit plus envoyer le message 
					break;
				}
				case BLINK_RIGHT_FRONT_ACK:
				{	
					if(rxData[0]==blinkr) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant avant droit	
						blinkfrontrack=0;		   // On ne doit plus envoyer le message 
					break;
				}
				case BLINK_LEFT_FRONT_ACK:
				{	
					if(rxData[0]==blinkl) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du clignotant avant gauche	
						blinkfrontlack=0;	   	   // On ne doit plus envoyer le message 
					break;
				}
				case LIGHT_FRONT_ACK:
				{	
					if(rxData[0]==light) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du feux
						lightfrontack=0;	   	   // On ne doit plus envoyer le message 
					break;
				}
				case LIGHT_BACK_ACK:
				{	
					if(rxData[0]==light) 		   // il s'agit bien d'un accus� de r�ception pour l'�tat courant du feux
						lightbackack=0;			   // On ne doit plus envoyer le message 
					break;
				}
			}

		#ifdef DEBUG
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
		#ifdef DEBUG_VERBOSE
			tmp=ms+1000*sec;
			printf("\r\n [%Lu] - CAN_DEBUG - BUFF=%u - ID=%u - LEN=%u - OVF=%u", tmp,rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
		#endif
		}
		else
		{
		#ifdef DEBUG_VERBOSE
			restart_wdt();
	        tmp=ms+1000*sec;
			printf("[%Lu] - CAN_DEBUG - FAIL on can_getd function", tmp);
		#endif
		}
	}
}

#inline
void internalLogic() //Fonction en charge de la gestion des fonctionnalit�s de la carte
{
	int8 data;

	// GESTION DES WARNINGS

 	data=input(WARNING);
	if(data!=warn)
	{
		warn=data;								// on affecte la nouvelle valeur
		blinkl=data;							// on affecte l'�tat correspondant au clignotant gauche
		blinkr=data;							// on affecte l'�tat correspondant au clignotant droit
		blinkbacklack=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkfrontlack=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkbackrack=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkfrontlack=5;						// on pr�voit d'envoyer 5 messages au maximum
		blinkl_reemit=TR_BLIGHT+1;				// on force l'emission du message d�s que possible
		blinkr_reemit=TR_BLIGHT+1;				// on force l'emission du message d�s que possible
		#ifdef DEBUG
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

		data=input(CLIGNO_L);								  // on lit l'�tat du clignotant gauche
		if(data!=blinkl)
		{
			blinkl=data;									  // on change l'�tat du clignotant droit
			blinkbacklack=5;								  // on pr�voit d'envoyer 5 fois le message
			blinkfrontlack=5;								  // on pr�voit d'envoyer 5 fois le message
			blinkl_reemit= TR_BLIGHT+1;						  // on force l'�mission instantann�e
			#ifdef DEBUG
				restart_wdt();
				tmp=ms+1000*sec;
				if(blinkl==1)
					printf("[%Lu] - INFO - Left blink status has changed. Left blink is now enable ", tmp);
				else
					printf("[%Lu] - INFO - Left blink status has changed. Left blink is now disable ", tmp);
			#endif
		}

		// GESTION DU CLIGNOTANT DROIT

		data=input(CLIGNO_R);								  // on lit l'�tat du clignotant droit
		if(data!=blinkr)
		{
			blinkr=data;									  // on change l'�tat du clignotant droit
			blinkbackrack=5;								  // on pr�voit d'envoyer 5 fois le message
			blinkfrontrack=5;								  // on pr�voit d'envoyer 5 fois le message
			blinkr_reemit= TR_BLIGHT+1;						  // on force l'�mission instantann�e
			#ifdef DEBUG
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

	data=input(CODE);									  // on lit l'�tat du feu
	if(data==1)										      // les feux sont en mode code
	{
		light=data;                                       // on change l'�tat du feu
		lightfrontack=5;                                  // on pr�voit d'envoyer 5 fois le message au maximum
		lightbackack=5;									  // on pr�voit d'envoyer 5 fois le message au maximum
		light_reemit=TR_LIGHT+1;						  // force l'envoi du message le plus rapidement possible
		#ifdef DEBUG
			restart_wdt();
	        tmp=ms+1000*sec;
			if(light==1)
				printf("[%Lu] - INFO - Light status has changed. Code is now enable ", tmp);
		#endif
	}
	else
	{
		data=input(FEUX);
		light=data;                                       // on change l'�tat du feu
		lightfrontack=5;                                  // on pr�voit d'envoyer 5 fois le message au maximum
		lightbackack=5;									  // on pr�voit d'envoyer 5 fois le message au maximum
		light_reemit=TR_LIGHT+1;						  // force l'envoi du message le plus rapidement possible
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

	if((blinkbacklack>=1 || blinkfrontlack>=1) && blinkl_reemit>=TR_BLINK)
	{
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_ORDER_LEFT,&blinkl,1,0,false,false); 			//emission de l'ordre d'�clairage des clignotants gauches
			if(blinkbacklack>=1)
			{
				blinkbacklack--;		     								//on d�cr�mente le nombre de r�emission restante
			}
			if(blinkfrontlack>=1)
			{
				blinkfrontlack--;											//on d�cr�mente le nombre de r��mission restante
			}
			blinkl_reemit=0;								 				//maz du compteur de temps d'emission
			#ifdef DEBUG
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

	if((blinkbackrack>=1 || blinkfrontrack>=1) && blinkr_reemit>=TR_BLINK)
	{
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_ORDER_RIGHT,&blinkr,1,0,false,false); 			//emission de l'ordre d'�clairage des clignotants droits
			if(blinkbackrack>=1)
			{
				blinkbackrack--;		     								//on d�cr�mente le nombre de r�emission restante
			}
			if(blinkfrontrack>=1)
			{
				blinkfrontrack--;											//on d�cr�mente le nombre de r��mission restante
			}
			blinkr_reemit=0;								 				//maz du compteur de temps d'emission
			#ifdef DEBUG
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

	if((lightfrontack>=1 || lightbackack>=1) && light_reemit>=TR_LIGHT)
	{
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			r=can_putd(LIGHT_ORDER,&light,1,0,false,false); 		    	//emission de l'ordre d'�clairage des feux
			if(lightfrontack>=1)
			{
				lightfrontack--;		     								//on d�cr�mente le nombre de r�emission restante
			}
			if(lightbackack>=1)
			{
				lightbackack--;										     	//on d�cr�mente le nombre de r��mission restante
			}
			light_reemit=0;								 				//maz du compteur de temps d'emission
			#ifdef DEBUG
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
