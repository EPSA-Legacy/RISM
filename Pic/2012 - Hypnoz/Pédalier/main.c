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
//		Version 1.03 - BLD - 27/11/2011 -> Trace modes		   // 
//		Version 1.04 - BLD - 18/12/2011 -> recalibrage timer   //
//		Version 1.05 - BLD - 11/02/2012 -> encapsulation debug //
//		Version 1.06 - BLD - 20/03/2010 -> patch extended id   //
//                                                             //
/////////////////////////////////////////////////////////////////

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F258.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>


// Assignation des sorties analogiques
#define ACCELERATOR_PIN         PIN_A0
#define ACCELERATOR_CHANNEL     0
#define BRAKE_PIN               PIN_A1
#define BRAKE_CHANNEL           1
#define PARK_PIN		        PIN_A4

#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

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
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
	setup_adc(ADC_CLOCK_INTERNAL);          //le temps de conversion sera de2-6 µs cf include du PIC
	setup_adc_ports(AN0);       	    	//on gère toutes l'entrée A0 comme analogique
	set_adc_channel(ACCELERATOR_CHANNEL);	//on se met sur la voie 0 par défaut
	delay_us(20);				    		//on temporise pour laisser le temps nécessaire à la sélection du canal
	read_adc(ADC_START_ONLY);		    	//on lance la lecture sur le convertisseur analogique numérique

	enable_interrupts(INT_TIMER2);          //configuration des interruptions
	enable_interrupts(INT_AD);
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);       //setup up timer2 to interrupt every 1ms
	can_init();						     	//initialise le CAN
	restart_wdt();

	CHECK_PWUP								  //on vérifie que le démarrage est du à une mise sous tension et non un watchdog

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
				case PARK_ACK:
				{	
					if(rxData[0]==park) 		   // il s'agit bien d'un accusé de réception pour l'état courant du frein	
					{
						park_reemit_count=0;	   // On ne doit plus envoyer le message 
						LOG_TESTING_D(TRACE_ALL||TRACE_PARK,"Park Status incomming from the CAN is ",rxData[0],sec,ms)
					}
					break;
				}
			}
		}
		LOG_LISTEN_CAN(r,rxStat,rxId,rxLen,sec,ms)
	}
}

#inline
void internalLogic() //Fonction en charge de la gestion des fonctionnalités de la carte
{
	int1 data;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in internalLogic",sec,ms)
	// GESTION DU FREIN A MAIN

	data=input(PARK);									  // on lit l'état du frein à main
	LOG_TESTING_D(TRACE_ALL||TRACE_PEDAL||TRACE_PARK,"Park status read value is ",data,sec,ms)
	if(data!=park)										  // l'état du frein à main à changer
	{
		park=data;                                        // on change l'état du frein
		park_reemit_count=5;                              // on prévoit d'envoyer 5 fois le message au maximum
		park_reemit_ms=TR_PARK+1;						  // force l'envoi du message le plus rapidement possible
		LOG_TESTING_D(TRACE_ALL||TRACE_PEDAL||TRACE_PARK,"Park status has been toggled it is now : ",park,sec,ms)
	}


	// GESTION DE LA PEDALE DE FREIN

	data=input(BRAKE_PIN);								  // on lit l'état du frein

	if(data!=brake)
	{
		brake_reemit_ms=TR_BRAKE+1;						  // si l'état du frein change on force l'émission de l'info
	}
	brake=data;
	LOG_TESTING_D(TRACE_ALL||TRACE_PEDAL||TRACE_BRAKE,"Brake status read value is ",brake,sec,ms)
	
	// GESTION DE LA PEDALE D'ACCELERATEUR

	if(adc_done==1)
	{
		LOG_DEVELOPMENT(TRACE_ALL||TRACE_EXEC||TRACE_ACC,"ADC for accelerator is done",sec,ms)
		accelerator=read_adc(ADC_READ_ONLY);		      // on lit la valeur de l'accélérateur
		adc_done=0;
		read_adc(ADC_START_ONLY);
		LOG_DEVELOPMENT(TRACE_ALL||TRACE_EXEC||TRACE_ACC,"ADC for accelerator is relaunched",sec,ms)
		LOG_TESTING_LU(TRACE_ALL||TRACE_PEDAL||TRACE_ACC,"Accelerator status read value is ",accelerator,sec,ms)
	}
}

#inline
void sendCAN()
{
	int r;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in SendCAN",sec,ms)

	//GESTION DU FREIN A MAIN

	if(park_ack>=1 && park_reemit_ms>=TR_PARK)
	{
		LOG_TESTING_D(TRACE_ALL||TRACE_EXEC||TRACE_PARK,"Reemit park time is over. Remaining reemission : ",park_ack,sec,ms)
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for park ",sec,ms)
			r=can_putd(PARK_ORDER,&park,1,0,false,false); //emission de l'ordre d'affichage du voyant de frein
			park_reemit_count--; 								 //on décrémente le nombre de réemission restante
			park_reemit_ms=0;								 //maz du compteur de temps d'emission
			LOG_SEND_CAN(r,PARK_ORDER,1,sec,ms)
		}
	}

	//GESTION DU FREIN

	if(brake_reemit_ms>=TR_BRAKE)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_BRAKE,"Reemit brake time is over",sec,ms)
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for brake ",sec,ms)
			r=can_putd(BRAKE_ORDER,&brake,1,0,false,false); //emission de l'ordre d'éclairage des feux stops
			brake_reemit_ms=0;								          //maz du compteur de temps d'emission
			LOG_SEND_CAN(r,BRAKE_ORDER,1,sec,ms)
		}
	}


	//GESTION DE L'ACCELERATEUR

	if(accelerator_reemit_ms>=TR_ACCELERATOR)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_ACC,"Reemit accelerator time is over",sec,ms)
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for accelerator",sec,ms)
			r=can_putd(ACCELERATOR_DATA,&accelerator,2,0,false,false); //emission des infos sur l'accélérateur
			accelerator_reemit_ms=0;							            //maz du compteur de temps d'emission
			LOG_SEND_CAN(r,ACCELERATOR_DATA,2,sec,ms)
		}
	}
}

