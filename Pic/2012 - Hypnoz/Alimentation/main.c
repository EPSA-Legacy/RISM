/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Alimentation                                     //
//		Version 1.00 - BLD - 25/10/2011                        //
//		Version 1.01 - BLD - 27/11/2011 -> renommage variable  //
//		Version 1.02 - BLD - 27/11/2011 -> ADC interrupt + 16b //
//                                                             //
/////////////////////////////////////////////////////////////////

#include <18F258.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//#define CAN_USE_EXTENDED_ID         FALSE

// Assignation des sorties analogiques
#define BATTERY_PLUS            PIN_A0
#define BATTERY_GROUND          PIN_A3

// Rapport du pont diviseur de tension
#define ku	3								   // il faut multiplier la tension mesurée par 3

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define DEBUG_VERBOSE 1

#fuses HS,NOPROTECT,NOLVP,WDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime
unsigned int16 charge=0;                       // variable contenant la dernière valeur de la charge de la batterie
unsigned int16 battery_reemit_ms=0;			   // compteur temporelle depuis la dernière emission
int16 tmp=0;						           // variable temporaire
int1 adc_done=0;							   // vaut 1 si la lecture de l'adc est finie 0 sinon


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
	 battery_reemit_ms++;
     if(ms>=1000)
	 {
		ms=0;
		sec++;
	 }
}

// Méthode d'interruption de l'ADC
#int_ad
void adc_handler()
{
	adc_done=1;
}

#org DEFAULT
void main()
{
	//initialisation du PIC 
	setup_adc(ADC_CLOCK_INTERNAL);		//le temps de conversion sera de2-6 µs cf include du PIC
	setup_adc_ports(ALL_ANALOG);  		//on gère toutes les entrées comme étant de type analogique et on mesure les tensions par rapport à une ref 5V
	set_adc_channel(0); 			    //on met le convertisseur NA sur le channel 
	delay_us(20);						//on temporise pour la mise en plce du cannal de l'ADC
	read_adc(ADC_START_ONLY);			//on lance la conversion

	//
	// Remarque : le convertisseur N/A est codé sur 10Bits (datasheet) soit un pas de 4mv sur 5V et donc un pas de 12mV sur 15V
	// On considère que la tension mesurée est égale au tier de la tension réelle (pont diviseur) 
	//

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(INT_AD);
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
	unsigned int16 data;		

	//CONVERSION : On envoit la tension en mV:
	//Principe : voltage contient le nombre de pas de mesures on multiplie donc par la valeur du pas : 4mV et par le rapport du pont diviseur
	
	if(adc_done==1)
	{
		data=read_adc(ADC_READ_ONLY);			  // On lit la valeur correspondante
		charge=(int16)(data*4*ku);				  // voltage contient désormais la charge de la batterie en mV
		adc_done=0;								  // On remet à zéro la lecture de l'ADC
		read_adc(ADC_START_ONLY);				  // On lance une nouvelle acquisition
		#ifdef DEBUG
			restart_wdt();
			tmp=sec*1000+ms;
			printf("[%Lu] - ADC INFO - BATTERY= %Lu mV",tmp,charge);
		#endif
	}
}

#inline
void sendCAN()
{
	int r;
	if(battery_reemit_ms>=TR_BATTERY)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(BATTERY_STATUS,charge,2,0,false,false);          // emission du message
			battery_reemit_ms=0;                                        // on remet à zéro la date d'émission
			#ifdef DEBUG
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
//					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BATTERY_STATUS,32,charge);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
}

