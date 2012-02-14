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
//			                                                   //
/////////////////////////////////////////////////////////////////

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>

//Constantes générale
#define TIMEBASE   200			//contient la durée entre deux interruptions en µs sur TMR2
#define MSTOTIMEBASE 5			//(temps en ms)*MSTOTIMEBASE=(temps en TIMEBASE)

#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)



// Variables globales

unsigned int16 rpm=0; 			//régime moteur
unsigned int16 rpm_reemit_tm=0; //date d'emission du dernier message ACCELERATOR_DATA
unsigned int16 clock=0;			//compte les coups d'horloge
unsigned int16 ms=0;			//compte les ms du uptime
unsigned int16 sec=0;			//compte les secondes de uptime
int32 tmp=0;					//variable temporaire
unsigned int32 begin_time=0;	//date du précédent allumage de la bougie unité = TIMEBASE
unsigned int32 end_time=0;		//date de l'allumage de la bougie  = TIMEBASE
int flag_overflow=1;			//vaut 0 sauf si il y a eu un dépassement de buffer



// Prototypes de fonctions

#inline
void sendCAN();

#inline
void internalLogic();

// Méthode d'interruption du timer0
#int_timer0
void isr_timer0() 			               // interruption engendrée lors de l'allumage d'une bougie
{
	begin_time=end_time;				   // on switche les date de début et de fin pour commencer un nouveau cycle
	end_time=clock;
	flag_overflow=0;
	
	// Test pour vérifier un overflow sur la variable ms
	if(end_time<begin_time)                // on a eu un dépassement de la variable 
	{
		flag_overflow=1;				   // on empêche le calcul du régime moteur car il serait erroné
	}
}

#int_timer2
void isr_timer2()       // lors de l'interruption du timer 2 (timer global) au bout d'une milliseconde
{
	clock++;			// on incrémente le compteur de 200µs
	rpm_reemit_tm++;	
	if(clock>=5000)
	{
		ms=0;
		sec++;	
		clock=0;
	}
}

#org DEFAULT
void main()
{
   // Initialisation du pic
   LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
   setup_adc_ports(NO_ANALOGS);
   enable_interrupts(INT_TIMER2);
   enable_interrupts(INT_TIMER0);

   setup_timer_0(RTCC_EXT_L_TO_H);
   setup_timer_2(T2_DIV_BY_4,250,1);		//interrupt every 0,2ms		

   can_init();
   can_set_baud();

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
	if(flag_overflow==0)
	{
		rpm=(1/(end_time-begin_time))*60/MSTOTIMEBASE; // rpm contient le régime moteur
	}
}

#inline
void sendCAN()
{
	int r;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in SendCAN",sec,ms)

	if(rpm_reemit_tm>=TR_RPM*MSTOTIMEBASE)
	{
		LOG_TESTING(TRACE_ALL||TRACE_EXEC||TRACE_ACC,"Reemit rpm time is over",sec,ms)
		if(can_tbe())                                             // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(ENGINE_RPM,&rpm,2,0,false,false);          // emission du message
			LOG_DEBUG(TRACE_ALL||TRACE_EXEC||TRACE_CAN,"CAN buffer emit is empty. Entering in emiting process for rpm",sec,ms)
			rpm_reemit_tm=0;                                      // on remet à zéro la date d'émission
			LOG_SEND_CAN(r,ENGINE_RPM,2,sec,ms)
		}
	}
}