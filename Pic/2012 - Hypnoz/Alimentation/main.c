/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Alimentation                                     //
//		Version 1.0 - BLD - 25/10/2011                         //
//                                                             //
/////////////////////////////////////////////////////////////////

#include <18F258.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//#define CAN_USE_EXTENDED_ID         FALSE

// Assignation des sorties analogiques
#define BATTERY_PLUS            PIN_A0
#define BATTERY_GROUND          PIN_A3

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define DEBUG_VERBOSE 1

#fuses HS,NOPROTECT,NOLVP,WDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime
unsigned int32 charge=0;                       // variable contenant la dernière valeur de la charge de la batterie
unsigned int8 emit_time=0;					   // compteur temporelle depuis la dernière emission
int16 tmp=0;						           // variable temporaire

int1 battery_emit=0;                           // flag valant 1 lorsqu'il faut envoyer le message message BATTERY_STATUS

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
	 emit_time++;
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
	setup_adc(ADC_CLOCK_INTERNAL);		//le temps de conversion sera de2-6 µs cf include du PIC
	setup_adc_ports(ALL_ANALOG);  		//on gère toutes les entrées comme étant de type analogique et on mesure les tensions par rapport à une ref 5V
	set_adc_channel(0); 			    //on met le convertisseur NA sur le channel 

	//
	// Remarque : le convertisseur N/A est codé sur 10Bits (datasheet) soit un pas de 4mv sur 5V et donc un pas de 12mV sur 15V
	// On considère que la tension mesurée est égale au tier de la tension réelle (pont diviseur) 
	//

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
	unsigned int16 data;
	unsigned int32 voltage;

	data=read_adc(ADC_START_AND_READ);					  // On lit la valeur sur le convertisseur
	delay_us(50);   	

	//CONVERSION : On envoit la tension en mV:
	//Principe : voltage contient le nombre de pas de mesures on multiplie donc par la valeur du pas : 4mV et par le rapport du pont diviseur

	voltage=(int)(data*4*3);
	if(abs(voltage-charge)>50) // si la charge à varié de plus de 50mV depuis le dernier envoi
	{
		battery_emit=1;
		charge=voltage;
		#ifdef DEBUG
			restart_wdt();
			tmp=sec*1000+ms;
			printf("[%Lu] - Battery_emit=1 due to a too large gap",tmp);
		#endif
 	}
	else if(emit_time >= TR_BATTERY) // si le message n'a pas été envoyé depuis longtemps
	{
		battery_emit=1;
		charge=voltage;
		#ifdef DEBUG
			restart_wdt();
			tmp=sec*1000+ms;
			printf("[%Lu] - Battery_emit=1 due to a Time_reemit Signal",tmp);
		#endif	
	}
}

#inline
void sendCAN()
{
	int r;
	if(battery_emit==1)
	{
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(BATTERY_STATUS,charge,32,0,false,false); //emission du message
			battery_emit=0;                                     // on a plus besoin d'envoyer le message
			emit_time=0;                                        // on remet à zéro la date d'émission
			#ifdef DEBUG
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BATTERY_STATUS,32,charge);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
}

