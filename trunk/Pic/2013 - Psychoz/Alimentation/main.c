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
//		Version 1.03 - BLD - 27/11/2011 -> Trace modes		   // 
//      Version 1.04 - BLD - 13/12/2011 -> correction sendCAN  //    
//		Version 1.05 - BLD - 18/12/2011 -> recalibrage timer   //      
//		Version 1.06 - BLD - 11/12/2011 -> encapsulation debug //  
//		Version 1.07 - BLD - 20/03/2012 -> patch extended id   // 
//		Version 2.00 - BLD - 11/04/2012 -> test unitaire OK    //
//		Version 2.x  - RWR - 11/10/2012 -> Copie saison 2013   //
//                                                             //                                                
/////////////////////////////////////////////////////////////////

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>



// Assignation des sorties analogiques
#define BATTERY_PLUS            PIN_A0
#define BATTERY_GROUND          PIN_A3

// Rapport du pont diviseur de tension
#define ku	3								   // il faut multiplier la tension mesur�e par 3

#fuses HS,NOPROTECT,NOLVP,WDT


#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compt� � l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime
unsigned int16 charge=0;                       // variable contenant la derni�re valeur de la charge de la batterie
unsigned int16 battery_reemit_ms=0;			   // compteur temporelle depuis la derni�re emission
int16 tmp=0;						           // variable temporaire
int1 adc_done=0;							   // vaut 1 si la lecture de l'adc est finie 0 sinon


// Prototypes de fonctions
#inline
void sendCAN();

#inline
void internalLogic();


// M�thode d'interruption du timer 2
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

// M�thode d'interruption de l'ADC
#int_ad
void adc_handler()
{
	adc_done=1;
}

#org DEFAULT
void main()
{
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
	//initialisation du PIC 
	setup_adc(ADC_CLOCK_INTERNAL);		//le temps de conversion sera de2-6 �s cf include du PIC
	setup_adc_ports(ALL_ANALOG);  		//on g�re toutes les entr�es comme �tant de type analogique et on mesure les tensions par rapport � une ref 5V
	set_adc_channel(0); 			    //on met le convertisseur NA sur le channel 
	delay_us(20);						//on temporise pour la mise en plce du cannal de l'ADC
	read_adc(ADC_START_ONLY);			//on lance la conversion

	//
	// Remarque : le convertisseur N/A est cod� sur 10Bits (datasheet) soit un pas de 4mv sur 5V et donc un pas de 12mV sur 15V
	// On consid�re que la tension mesur�e est �gale au tier de la tension r�elle (pont diviseur) 
	//

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(INT_AD);
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
		internalLogic();

		restart_wdt();
		sendCAN();
	}
}

#inline
void internalLogic() //Fonction en charge de la gestion des fonctionnalit�s de la carte
{
	 int16 data;		

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in internalLogic",sec,ms)

	//CONVERSION : On envoit la tension en mV:
	//Principe : voltage contient le nombre de pas de mesures on multiplie donc par la valeur du pas : 4mV et par le rapport du pont diviseur
	
	if(adc_done==1)
	{
		data=read_adc(ADC_READ_ONLY);			  // On lit la valeur correspondante
		charge=(int16)(data*20*ku);				  // voltage contient d�sormais la charge de la batterie en mV
		adc_done=0;								  // On remet � z�ro la lecture de l'ADC
		read_adc(ADC_START_ONLY);				  // On lance une nouvelle acquisition
		LOG_TESTING_LD(TRACE_ALL||TRACE_CHARGE,"ADC INFO - Battery voltage ",charge,sec,ms)
	}
}

#inline
void sendCAN()
{
	int r;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in sendCAN",sec,ms)

	if(battery_reemit_ms>=TR_BATTERY)
	{
//		LOG_DEVELOPMENT(TRACE_EXEC||TRACE_ALL||TRACE_CHARGE,"Reemit battery time is over",sec,ms)
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for battery status",sec,ms)
			r=can_putd(BATTERY_STATUS,&charge,2,0,false,false);          // emission du message
			battery_reemit_ms=0;                                        // on remet � z�ro la date d'�mission
 			LOG_SEND_CAN(r,BATTERY_STATUS,2,sec,ms)
		}
	}
}

