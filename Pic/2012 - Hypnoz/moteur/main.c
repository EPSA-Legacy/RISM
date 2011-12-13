/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Moteur                                           //
//		Version 1.00  - BLD - 06/12/2011                       //
//			                                                   //
/////////////////////////////////////////////////////////////////

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//Constantes générale
#define TIMEBASE   1			//contient la durée entre deux interruptions sur TMR2

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define TRACE 1
#define TRACE_CAN 1

#ifdef DEBUG
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#else
	#fuses HS,NOPROTECT,NOLVP,WDT
#endif
#use delay(clock=20000000)



// Variables globales

unsigned int16 rpm=0; 			//régime moteur
unsigned int16 rpm_reemit_ms=0; //date d'emission du dernier message ACCELERATOR_DATA
unsigned int16 engine_time=0;   //temps écoulé entre deux impulsions de bougies.
unsigned int32 clock=0;			//compte les coups d'horloge
unsigned int16 ms=0;			//compte les ms du uptime
unsigned int16 sec=0;			//compte les secondes de uptime
int16 begin_time=0;	//date du précédent allumage de la bougie
int16 end_time=0;		//date de l'allumage de la bougie 



// Prototypes de fonctions

#inline
void sendCAN();

// Méthode d'interruption du timer0
#int_timer0
void isr_timer0() 			               // interruption engendrée lors de l'allumage d'une bougie
{
	end_time=clock;                        // on récupère la date au moment de l'allumage
	if(end_time<begin_time)                // on a eu un dépassement de la variable clock
	{
		begin_time-=5000;
	}

	rpm=(1/abs(end_time-begin_time))*60*2; // rpm contient le régime moteur
}

#int_timer2
void isr_timer2()       // lors de l'interruption du timer 2 (timer global) au bout d'une milliseconde
{
	clock++;			// on incrémente le compteur de 200µs
	if(clock%5==0)
	{
		ms++;
		rpm_reemit_ms++;
	}	 
	if(ms==1000)
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
   setup_adc_ports(NO_ANALOGS);
   enable_interrupts(INT_TIMER2);
   enable_interrupts(INT_TIMER0);

   setup_timer_0(RTCC_EXT_L_TO_H);
   setup_timer_2(T2_DIV_BY_4,250,1);		//interrupt every 0,2ms		

   can_init();
   can_set_baud();
   
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

   while(true)
   {
		sendCAN();
   }
}


#inline
void sendCAN()
{
	int r;
	if(rpm_reemit_ms>=TR_RPM)
	{
		if(can_tbe())                                             // On vérifie que le buffer d'emission est libre
		{
			r=can_putd(ENGINE_RPM,&rpm,2,0,false,false);          // emission du message
			battery_reemit_ms=0;                                  // on remet à zéro la date d'émission
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%Lu",tmp, r, BATTERY_STATUS,32,charge);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
}

