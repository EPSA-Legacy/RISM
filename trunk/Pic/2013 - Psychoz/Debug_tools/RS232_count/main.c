/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Programme de test initial                              //
//		Version 1.00 - BLD - 18/12/2011                        //
//                                                             //                                                
/////////////////////////////////////////////////////////////////

#include <18F258.h>
#include <can-18xxx8.c>


#fuses HS,NOPROTECT,NOLVP,NOWDT

#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int32 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int32 sec=0;                          // contient les secondes du uptime




// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
  
	 	ms++;

     if(ms==250)
	 {
		sec++;
		ms=0;
		printf("%Lu",sec);
		output_toggle(PIN_B1);
	 }
}



#org DEFAULT
void main()
{
	char reponse='a';
	int flag=255;
	int id1=23;	
	int id2=12;

	int value1=15;
	int value2=16;
	int value3=17;
	
	//initialisation du PIC 
	setup_adc(ADC_OFF);  		//on gère toutes les entrées comme étant de type analogique et on mesure les tensions par rapport à une ref 5V


	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(INT_AD);
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);   //setup up timer2 to interrupt every 0,1ms
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
		putc(flag);
		putc(id1);
		putc(value1);
		putc(flag);
		putc(id1);
		putc(value2);
		putc(flag);
		putc(id2);
		putc(value3);
	}
}



