/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Pédalier                                         //
//		Version 1.00 - BLD - 26/10/2011                        //
//      Version 1.01 - BLD - 27/11/2011 -> frein en binaire    //
//      Version 1.02 - BLD - 27/11/2011 -> ADC_interrupt       //
//													           //
/////////////////////////////////////////////////////////////////

#include <18F258.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//#define CAN_USE_EXTENDED_ID         FALSE

// Assignation des sorties analogiques
#define ACCELERATOR_PIN         PIN_A0
#define ACCELERATOR_CHANNEL     0
#define BRAKE_PIN               PIN_A1
#define BRAKE_CHANNEL           1
#define PARK_PIN		        PIN_A4

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define DEBUG_VERBOSE 1

#fuses HS,NOPROTECT,NOLVP,WDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime

int16 tmp=0;						           // variable temporaire

unsigned int16 accelerator=0;                  // position de la pédale d'accélérateur codé sur 10bits en proportionnel
unsigned int16 accelerator_reemit_ms=0;        // date d'emission du dernier message ACCELERATOR_DATA
unsigned int8 brake=0;                         // position de la pédale de frein 0 si levée 1 si enfoncée
unsigned int16 brake_reemit_ms=0;              // date d'emission du dernier message BRAKE_ORDER
int8 park=0;								   // état du frein à main 1 si enfoncée, 0 sinon
int8 park_reemit_count=0;				       // vaut 0 si l'on a reçu un paquet d'accusé de réception, le nombre de réemmission restante sinon
unsigned int16 park_reemit_ms=0;		       // temps depuis la dernière émission du message
int1 adc_done=0;							   // vaut 1 si une lecture valide est disponible 0 sinon


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
     park_reemit_ms++;
	 brake_reemit_ms++;
	 accelerator_reemit_ms++;
     if(ms>=1000)
	 {
		ms=0;
		sec++;
	 }
}

//Méthode d'interruption de l'ADC
#int_ad
void adc_handler()
{
	adc_done=1;
}

#org DEFAULT
void main()
{
	//initialisation du PIC
	setup_adc(ADC_CLOCK_INTERNAL);          //le temps de conversion sera de2-6 µs cf include du PIC
	setup_adc_ports(AN0);       	    	//on gère toutes l'entrée A0 comme analogique
	set_adc_channel(ACCELERATOR_CHANNEL);	//on se met sur la voie 0 par défaut
	delay_us(20);				    		//on temporise pour laisser le temps nécessaire à la sélection du canal
	read_adc(ADC_START_ONLY);		    	//on lance la lecture sur le convertisseur analogique numérique

	enable_interrupts(INT_TIMER2);          //configuration des interruptions
	enable_interrupts(INT_AD);
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,79,16);       //setup up timer2 to interrupt every 1ms
	can_init();						     	//initialise le CAN
	can_set_baud();					    	//obsolète à priori à tester
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
				case PARK_ACK:
				{	
					if(rxData[0]==park) 		   // il s'agit bien d'un accusé de réception pour l'état courant du frein	
						park_reemit_count=0;	   // On ne doit plus envoyer le message 
					break;
				}
			}
			#ifdef DEBUG
				restart_wdt();
				tmp=ms+1000*sec;
				if((rxId==PARK_ORDER) && rxLen>=1)
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
void internalLogic() //Fonction en charge de la gestion des fonctionnalités de la carte
{
	int1 data;

	// GESTION DU FREIN A MAIN

	data=input(PARK);									  // on lit l'état du frein à main
	if(data!=park)										  // l'état du frein à main à changer
	{
		park=data;                                        // on change l'état du frein
		park_reemit_count=5;                              // on prévoit d'envoyer 5 fois le message au maximum
		park_reemit_ms=TR_PARK+1;						  // force l'envoi du message le plus rapidement possible
		#ifdef DEBUG
			restart_wdt();
	        tmp=ms+1000*sec;
			if(park==1)
				printf("[%Lu] - INFO - Park status has changed. Park is now enable ", tmp);
			else
				printf("[%Lu] - INFO - Park status has changed. Park is now disable ", tmp);
		#endif
	}

	// GESTION DE LA PEDALE DE FREIN

	data=input(BRAKE_PIN);								  // on lit l'état du frein
	if(data!=brake)
	{
		brake_reemit_ms=TR_BRAKE+1;						  // si l'état du frein change on force l'émission de l'info
	}
	brake=data;
	#ifdef DEBUG
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - INFO - Brake Status : %d ", tmp,brake);
	#endif

	// GESTION DE LA PEDALE D'ACCELERATEUR

	if(adc_done==1)
	{
		accelerator=read_adc(ADC_READ_ONLY);		      // on lit la valeur de l'accélérateur
		adc_done=0;
		read_adc(ADC_START_ONLY);
		#ifdef DEBUG
			restart_wdt();
	    	tmp=ms+1000*sec;
			printf("[%Lu] - ADC INFO - Accelerator Status : %Lu ", tmp,accelerator);
		#endif
	}

}

#inline
void sendCAN()
{
	int r;

	//GESTION DU FREIN A MAIN

	if(park_ack>=1 && park_reemit_ms>=TR_PARK)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(PARK_ORDER,&park,1,0,false,false); //emission de l'ordre d'affichage du voyant de frein
			park_reemit_count--; 								 //on décrémente le nombre de réemission restante
			park_reemit_ms=0;								 //maz du compteur de temps d'emission
			#ifdef DEBUG
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, PARK_ORDER,1,park);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}

	//GESTION DU FREIN

	if(brake_reemit_ms>=TR_BRAKE)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(BRAKE_ORDER,&brake,1,0,false,false); //emission de l'ordre d'éclairage des feux stops
			brake_reemit_ms=0;								          //maz du compteur de temps d'emission
			#ifdef DEBUG
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BRAKE_ORDER,1,brake);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}


	//GESTION DE L'ACCELERATEUR

	if(accelerator_reemit_ms>=TR_ACCELERATOR)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(ACCELERATOR_DATA,&accelerator,2,0,false,false); //emission des infos sur l'accélérateur
			accelerator_reemit_ms=0;							            //maz du compteur de temps d'emission
			#ifdef DEBUG
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%Lu",tmp, r, ACCELERATOR_DATA,16,accelerator);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
}

