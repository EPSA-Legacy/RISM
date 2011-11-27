/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Acquisition                                      //
//		Version 1.00 - BLD - 20/11/2011                        //
//		Version 1.01 - BLD - 27/11/2011 -> mesure en 16bits    //
//      Version 1.02 - BLD - 27/11/2011 -> ADC non blocant     //
//      Version 1.03 - BLD - 27/11/2011 -> Trace mode		   //
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

// Constantes diverses
#define ADC_NB_CHANNEL			8              // Nombre de canaux différents utilisés sur le convertisseur A/N

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define TRACE_ALL 1
#define TRACE_TENSION 1
#define TRACE_COURANT 1
#define TRACE_MOT 1
#define TRACE_SC 1
#define TRACE_CONV 1
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
int16 umot1=0;                				   // valeur de la tension convertie en volt aux bornes du moteur1
int16 umot2=0;         						   // valeur de la tension convertie en volt aux bornes du moteur2
int16 usc=0;                       			   // valeur de la tension aux bornes des supercapacités 1unité=2volt (plage=0-512V)
int16 uconv=0;                 				   // valeur de la tension envoyé au convertisseur
int16 imot1=0;                           	   // valeur du courant traversant le moteur1
int16 imot2=0;								   // valeur du courant traversant le moteur2
int16 isc=0;								   // valeur du courant traversant les supercapas
int16 tconv=0;								   // temperature du convertisseur
int8  current_adc_channel=0;				   // contient le canal de l'ADC actuellement en cours de lecture
int1 adc_done=0;							   // vaut 1 lorsque la conversion analogique/numérique est finie
unsigned int16 tension_reemit_ms=0;		       // temps depuis la dernière émission du message contenant les tensions
unsigned int16 courant_reemit_ms=0;			   // temps depuis la dernière émission du message contenant les courants

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
	 tension_reemit_ms++;
	 courant_reemit_ms++;
     if(ms>=1000)
	 {
		ms=0;
		sec++;
	 }
}
#int_ad 
void adc_handler()
{
	adc_done=1;
}

#org DEFAULT
void main()
{
	//initialisation du PIC
	setup_adc(ADC_CLOCK_INTERNAL);            //le temps de conversion sera de2-6 µs cf include du PIC
	setup_adc_ports(AN0_TO_AN6);              //on gère toutes les entrées A0,A1,A3,A4,A5,E0,E1 comme analogiques
	set_adc_channel(TENSION_MOT1_CHANNEL);    //on se met sur la voie 0 par défaut
	read_adc(ADC_START_ONLY);		          //on démarre le convertisseur analogique numérique en mode non bloquant
	current_adc_channel=TENSION_MOT1_CHANNEL; //on mémorise le channel sur lequel on commence à mesurer

	enable_interrupts(INT_TIMER2);            //configuration des interruptions
	enable_interrupts(INT_AD);
	enable_interrupts(GLOBAL); 
	

	setup_timer_2(T2_DIV_BY_4,79,16);         //setup up timer2 to interrupt every 1ms
	can_init();						          //initialise le CAN
	can_set_baud();					          //obsolète à priori à tester
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
	int8 channel_list[ADC_NB_CHANNEL];
	int1 done;

	// RQ : data contient le nombre de pas de mesure atteint par rapport à la tension de référence (ici 5V). 
	// Le ADC marche sur 10 bits on a donc un pas de mesure de 4mV


	// On renseigne la liste de parcours des canaux de l'ADC

	channel_list[0]=TENSION_MOT1_CHANNEL;
	channel_list[1]=TENSION_MOT2_CHANNEL;
	channel_list[2]=TENSION_SC_CHANNEL;
	channel_list[3]=TENSION_CONV_CHANNEL;
	channel_list[4]=COURANT_MOT1_CHANNEL;
	channel_list[5]=COURANT_MOT2_CHANNEL;
	channel_list[6]=COURANT_SC_CHANNEL;
	channel_list[7]=TEMP_CONVERT_CHANNEL;

	// on vérifie que la conversion est achevée
	if(adc_done==1)
	{
		data=read_adc();								                                     // on lit la valeur convertie

		switch(current_adc_channel)						                                     // on inscrit la valeur dans la bonne variable
		{
			case TENSION_MOT1_CHANNEL:
			{
				umot1=(int16)((data/205)*ku_mot);											 // umot1 est désormais en volt
				#if (TRACE_MOT || TRACE_TENSION || TRACE_ALL)
					restart_wdt();
	 				tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Tension Mot 1 : %Ld V", tmp,umot1);
				#endif
				break;
			}
			case TENSION_MOT2_CHANNEL:
			{
				umot2=(int16)((data/205)*ku_mot);										     // umot2 est désormais en volt
				#if (TRACE_MOT || TRACE_TENSION || TRACE_ALL)
					restart_wdt();
	 				tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Tension Mot 2 : %Ld V", tmp,umot2);
				#endif
				break;
			}
			case TENSION_SC_CHANNEL:
			{
				usc=(int16)((data/205)*ku_sc);											     // usc est désormais en volt
				#if (TRACE_SC || TRACE_TENSION || TRACE_ALL)
					restart_wdt();
	 				tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Tension SC : %Ld V", tmp,usc);
				#endif
				break;
			}
			case TENSION_CONV_CHANNEL:
			{
				uconv=(int16)((data/205)*ku_conv);										     // uconv est désormais en volt
				#if (TRACE_CONV || TRACE_TENSION || TRACE_ALL)
					restart_wdt();
	   				tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Tension Convertisseur : %Ld V", tmp,uconv);
				#endif
				break;
			}
			case COURANT_MOT1_CHANNEL:
			{
				imot1=(int16)((data/205)*ki_mot);											 // imot1 est désormais en ampère
				#if (TRACE_MOT || TRACE_COURANT || TRACE_ALL)
					restart_wdt();
				    tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Courant Mot 1 : %Ld A", tmp,imot1);
				#endif
				break;
			}
			case COURANT_MOT2_CHANNEL:
			{
				imot2=(int16)((data/205)*ki_mot);					 						 // imot2 est désormais en ampère
				#if (TRACE_MOT || TRACE_COURANT || TRACE_ALL)
					restart_wdt();
	 				tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Courant Mot 2 : %Ld A", tmp,imot2);
				#endif
				break;
			}
			case COURANT_SC_CHANNEL:
			{
				isc=(int16)((data/205)*ki_sc);						  						 // iconv est désormais en ampère
				#if (TRACE_SC || TRACE_COURANT || TRACE_ALL)
					restart_wdt();
	   	 			tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Courant SC : %Ld A", tmp,isc);
				#endif
				break;
			}
			case TEMP_CONVERT_CHANNEL:
			{
				tconv=(int16)((data/205)*kt_conv);					  						 // tconv est désormais en °C
				#if (TRACE_CONV || TRACE_ALL)
					restart_wdt();
				    tmp=ms+1000*sec;
					printf("[%Lu] - ADC INFO - Temperature Convertisseur : %Ld C", tmp,tconv);
				#endif
				break;
			}
		}
	
		current_adc_channel++; 																 // on passe sur le canal suivant
		if(current_adc_channel>=ADC_NB_CHANNEL)												 // on a déjà passé tout les channels donc on revient au premier
		{
			current_adc_channel=0;
		}
		
		set_adc_channel(current_adc_channel);											     // on se place sur le canal de lecture correspondant 
		delay_us(20);																		 // on patiente 20µs que le ADC soit prêt
		read_adc(ADC_START_ONLY);		         											 // on démarre le convertisseur analogique numérique en mode non bloquant
		adc_done=0;																			 // on remet à 0 la variable d'interruption
	}
}

#inline
void sendCAN()
{
	int r;
	int8 txdata[8];											 										  // tableau contenant le paquet des courants à émettre
    int8 txLen=8;

	if(tension_reemit_ms>=TR_ELECTRIC)
	{
		//on remplit le paquet d'emission
		txdata[0]=umot1;
		txdata[2]=umot2;
		txdata[4]=usc;
		txdata[6]=uconv;
		if(can_tbe())                                             // on vérifie que le buffer d'emmission est libre
		{
			r=can_putd(VOLTAGE_DATA,txdata,txLen,0,false,false); // emission des données
			tension_reemit_ms=0;								  // maz du compteur de temps d'emission
		
			#ifdef TRACE_CAN
				if(r!=0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, PARK_ORDER,1,txdata);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
	if(courant_reemit_ms>=TR_ELECTRIC)
	{
		//on remplit le paquet d'emission
		txdata[0]=imot1;
		txdata[2]=imot2;
		txdata[4]=isc;
		txdata[6]=tconv;
		if(can_tbe())                                             // on vérifie que le buffer d'emmission est libre
		{
			r=can_putd(CURRENT_DATA,txdata,txLen,0,false,false); // emission des données
			courant_reemit_ms=0;								  // maz du compteur de temps d'emission
			#ifdef TRACE_CAN
				if(r!=0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, PARK_ORDER,1,txdata);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
}

