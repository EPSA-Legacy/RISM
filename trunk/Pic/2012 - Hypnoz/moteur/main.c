/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Moteur                                           //
//		Version 1.00  - BLD - 06/12/2011                       //
//		Version 1.01  - BLD - 14/02/2012 -> encapsulation debug//
//		Version 1.02  - BLD - 14/02/2012 -> corr interruption  //
//		Version 1.03  - BLD - 14/02/2012 -> calcul rpm v2	   //
//		Version 1.04  - BLD - 20/03/2012 -> patch extended id  //
//		Version 2.00  - BLD - 28/03/2012 -> test unitaire OK   //
//			                                                   //
/////////////////////////////////////////////////////////////////

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>

//Constantes générale
#define TIMEBASE   200			//contient la durée entre deux interruptions en µs sur TMR2
#define MSTOTIMEBASE 5			//(temps en ms)*MSTOTIMEBASE=(temps en TIMEBASE)

#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)



// Variables globales

unsigned int16 rpm=0; 			//régime moteur
unsigned int16 rpm_reemit_tm=0; //date d'emission du dernier message ACCELERATOR_DATA
unsigned int16 clock=0;			//compte les coups d'horloge
unsigned int16 ms=0;			//compte les ms du uptime
unsigned int16 sec=0;			//compte les secondes de uptime
unsigned int32 begin_time=0;	//date du précédent allumage de la bougie unité = TIMEBASE
unsigned int32 end_time=0;		//date de l'allumage de la bougie  = TIMEBASE
int16 value_timer=0;			    


// Prototypes de fonctions

#inline
void sendCAN();

#inline
void internalLogic();


#int_timer2
void isr_timer2()       // lors de l'interruption du timer 2 (timer global) au bout d'une milliseconde
{
	clock++;			// on incrémente le compteur de 200µs
	rpm_reemit_tm++;
	if(clock==5000)
	{
		ms=0;
		sec++;	
		value_timer=get_timer0();
		clock=0;
		set_timer0(0);
	}
}

#org DEFAULT
void main()
{
   // Initialisation du pic
   LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
   setup_adc_ports(NO_ANALOGS);

   setup_timer_0(RTCC_DIV_1|RTCC_EXT_L_TO_H);
   setup_timer_2(T2_DIV_BY_4,250,1);		//interrupt every 0,2ms	
   enable_interrupts(INT_TIMER0);
   enable_interrupts(INT_TIMER2);	
   enable_interrupts(GLOBAL);

   can_init();
   set_timer0(0);
   value_timer=0;

   CHECK_PWUP								  //on vérifie que le démarrage est du à une mise sous tension et non un watchdog

   while(true)
   {
		LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in working loop",sec,ms)
		sendCAN();
		restart_wdt();
		internalLogic();
   }
}

#inline
void internalLogic()
{
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in internalLogic",sec,ms)
	rpm=value_timer*120;
	LOG_TESTING_LD(TRACE_ALL||TRACE_EXEC||TRACE_RPM,"RPM is now : ",rpm,sec,ms)
}

#inline
void sendCAN()
{
	int r;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in SendCAN",sec,ms)

	if(rpm_reemit_tm>=TR_RPM*MSTOTIMEBASE)
	{
//		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_RPM,"Reemit rpm time is over",sec,ms)
		if(can_tbe())                                             // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(ENGINE_RPM,&rpm,2,0,false,false);          // emission du message
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for rpm",sec,ms)
			rpm_reemit_tm=0;                                      // on remet à zéro la date d'émission
			LOG_SEND_CAN(r,ENGINE_RPM,2,sec,ms)
		}
	}
}