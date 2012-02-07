/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Tablet PC                                        //
//		Version 1.00 - BLD - 24/10/2011                        //
//		Version 1.01 - BLD - 29/11/2011 -> Trace mode          //
//		Version 1.02 - BLD - 18/12/2011 -> recalibrage timer   //
//		Version 1.03 - BLD - 07/02/2012 -> protocole tablet PC //
//                                                             //
/////////////////////////////////////////////////////////////////

#include <18F258.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//#define CAN_USE_EXTENDED_ID         FALSE

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define TRACE_CAN 1

#ifdef DEBUG
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#else
	#fuses HS,NOPROTECT,NOLVP,WDT
#endif

#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

#define INIT_TRAME_DESCRIPTOR 255

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int32 sec=0;                          // contient les secondes du uptime
unsigned int32 tmp=0;						   // variable temporaire						


// Prototypes de fonctions
#inline
void listenCAN();

// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
	 ms++;
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
	setup_adc_ports(NO_ANALOGS);        //on gère toutes les entrées comme étant de type numérique

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);   //setup up timer2 to interrupt every 1ms
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
		listenCAN();
	}
}

#inline
void listenCAN()        // Fonction assurant la réception des messages sur le CAN et l'envoi de ces derniers sur le RS232
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;

	int i;

	if(can_kbhit())                                // Une donnée est présente dans le buffer de réception du CAN
	{
		if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on récupère le message
		{
			putc(255);							   // on envoie le message de début de trame
			putc(rxId);							   // on envoie l'ID
			for(i=0;i<rxLen;i++)
			{
				putc(rxData[i]);				   // on envoie les données si besoin
			}

			#ifdef TRACE_CAN
				tmp=ms+1000*sec;
				printf("\r\n [%Lu] - CAN_DEBUG - BUFF=%u - ID=%u - LEN=%u - OVF=%u", tmp,rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
			#endif
		}
		else
		{
			#ifdef TRACE_CAN
				restart_wdt();
	   	        tmp=ms+1000*sec;
				printf("[%Lu] - CAN_DEBUG - FAIL on can_getd function", tmp);
			#endif
		}
	}
}




