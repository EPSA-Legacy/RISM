/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Acquisition                                      //
//		Version 1.0 - BLD - 20/11/2011                         //
//                                                             //
//      													   //
/////////////////////////////////////////////////////////////////

#include <18F4580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//#define CAN_USE_EXTENDED_ID         FALSE

// Assignation des sorties analogiques
#define TENSION_MOT1            PIN_A0
#define TENSION_MOT1_CHANNEL    0
#define TENSION_MOT2            PIN_A1
#define TENSION_MOT2_CHANNEL    1
#define TENSION_SC				PIN_A2
#define TENSION_SC_CHANNEL      2
#define TENSION_CONV			PIN_A3
#define TENSION_CONV_CHANNEL	3
#define COURANT_MOT1			PIN_A4
#define COURANT_MOT1_CHANNEL	4
#define COURANT_MOT2			PIN_A5
#define COURANT_MOT2_CHANNEL	5
#define COURANT_SC				PIN_E0
#define COURANT_SC_CHANNEL		6
#define TEMP_CONVERT			PIN_E1
#define TEMP_CONVERT_CHANNEL	7

// Rapport des ponts diviseurs de tension
#define ku_mot                  1
#define ku_sc                   1
#define ku_conv                 1
#define ki_mot                  1
#define ki_sc                   1
#define kt_conv                 1

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

int8 umot1=0;                				   // valeur de la tension convertie en volt aux bornes du moteur1
int8 umot2=0;         						   // valeur de la tension convertie en volt aux bornes du moteur2
int8 usc=0;                       			   // valeur de la tension aux bornes des supercapacités 1unité=2volt (plage=0-512V)
int8 uconv=0;                 				   // valeur de la tension envoyé au convertisseur
int8 imot1=0;                           	   // valeur du courant traversant le moteur1
int8 imot2=0;								   // valeur du courant traversant le moteur2
int8 isc=0;									   // valeur du courant traversant les supercapas
int8 tconv=0;								   // temperature du convertisseur
unsigned int16 electric_reemit=0;		       // temps depuis la dernière émission du message

// Prototypes de fonctions
#inline
void sendCAN();

#inline
void internalLogic();


// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
	 ms++;
	 electric_reemit++;
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
	setup_adc(ADC_CLOCK_INTERNAL);      //le temps de conversion sera de2-6 µs cf include du PIC
	setup_adc_ports(AN0_TO_AN6);        //on gère toutes les entrées A0,A1,A3,A4,A5,E0,E1 comme analogiques
	set_adc_channel(0);					//on se met sur la voie 0 par défaut

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
		internalLogic();

		restart_wdt();
		sendCAN();
	}
}

#inline
void internalLogic() //Fonction en charge de la gestion des fonctionnalités de la carte
{
	int16 data;

	// RQ : data contient le nombre de pas de mesure atteint par rapport à la tension de référence (ici 5V). 
	// Le ADC marche sur 10 bits on a donc un pas de mesure de 4mV

	// GESTION DE LA TENSION MOTEUR 1
	set_adc_channel(TENSION_MOT1_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	umot1=(int)(data*0.004*ku_mot);						  // Umot1 est désormais en volt
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Tension Mot 1 : %d V", tmp,umot1);
	#endif

	// GESTION DE LA TENSION MOTEUR 2
	set_adc_channel(TENSION_MOT2_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	umot2=(int)(data*0.004*ku_mot);						  // Umot2 est désormais en volt
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Tension Mot 2 : %d V", tmp,umot2);
	#endif

	// GESTION DE LA TENSION SUPERCAPACITES
	set_adc_channel(TENSION_SC_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	usc=(int)(data*0.004*ku_sc);						  // Usc est désormais en /2volts
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Tension SC : %d V", tmp,usc*2);
	#endif

	// GESTION DE LA TENSION CONVERTISSEUR
	set_adc_channel(TENSION_CONV_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	uconv=(int)(data*0.004*ku_conv);					  // Uconv est désormais en volt
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Tension Convertisseur : %d V", tmp,uconv);
	#endif

	// GESTION DU COURANT MOTEUR 1
	set_adc_channel(COURANT_MOT1_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	imot1=(int)(data*0.004*ki_mot);						  // imot1 est désormais en ampère
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Courant Mot 1 : %d A", tmp,imot1);
	#endif

	// GESTION DU COURANT MOTEUR 2
	set_adc_channel(COURANT_MOT2_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	imot2=(int)(data*0.004*ki_mot);						  // imot2 est désormais en ampère
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Courant Mot 2 : %d A", tmp,imot2);
	#endif

	// GESTION DU COURANT SUPERCAPACITES
	set_adc_channel(COURANT_SC_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	isc=(int)(data*0.004*ki_sc);						  // iconv est désormais en ampère
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Courant SC : %d A", tmp,isc);
	#endif

	// GESTION DE LA TEMPERATURE
	set_adc_channel(TEMP_CONVERT_CHANNEL);				  // on se place sur le canal de lecture correspondant 
	delay_us(20);										  // on patiente 20µs que le ADC soit prêt
	data=read_adc(ADC_START_AND_READ);				      // on lit la valeur 
	tconv=(int)(data*0.004*kt_conv);					  // tconv est désormais en °C
	#ifdef DEBUG_VERBOSE
		restart_wdt();
	    tmp=ms+1000*sec;
		printf("[%Lu] - ADC INFO - Temperature Convertisseur : %d C", tmp,tconv);
	#endif


}

#inline
void sendCAN()
{
	int r;
	int8 txdata[8];
    int8 txLen=8;

	if(electric_reemit>=TR_ELECTRIC)
	{
		//on remplit le paquet d'emmission
		txdata[0]=umot1;
		txdata[1]=umot2;
		txdata[2]=usc;
		txdata[3]=uconv;
		txdata[4]=imot1;
		txdata[5]=imot2;
		txdata[6]=isc;
		txdata[7]=tconv;
		if(can_tbe()) // on vérifie que le buffer d'emmission est libre
		{
			r=can_putd(ELECTRIC_DATA,txdata,txLen,0,false,false); // emission des données
			electric_reemit=0;									  // maz du compteur de temps d'emission
		}
		#ifdef DEBUG_VERBOSE
				if(r!=0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, PARK_ORDER,1,txdata);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
		#endif
	}
}

