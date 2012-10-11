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


#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int32 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int8 clock=0;						   // contient une variable temporelle incrémentée tous les 0,1 ms
unsigned int32 sec=0;                          // contient les secondes du uptime


void output_check();
void echo_rs232();
void check_watchdog();


// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
     clock++;
	 if(clock>=10)
	 {
	 	ms++;
		clock=0;
	 }
     if(ms%1000==0)
	 {
		sec++;
	 }
}



#org DEFAULT
void main()
{
	char reponse='a';
	int1 flag=false;
	
	//initialisation du PIC 
	setup_adc(ADC_OFF);  		//on gère toutes les entrées comme étant de type analogique et on mesure les tensions par rapport à une ref 5V


	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(INT_AD);
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,25,5);   //setup up timer2 to interrupt every 0,1ms
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
		flag=false;
		printf("########################################### \r\n");
		printf("## Bienvenue dans le programme test_init ## \r\n");
		printf("########################################### \r\n");
		printf("  Menu  \r\n");
		printf("[1] Test des sorties  \r\n");
		printf("[2] Echo RS232  \r\n");
		printf("[3] Caracterisation Watchdog  \r\n");
		printf(" \r\n Choix : ");
		while(flag==false)
		{
			restart_wdt();
			if(kbhit())
			{
				flag=true;
				reponse=getc();
				switch(reponse)
				{
					case '1':
					{
						output_check();
						break;
					}
					case '2':
					{
						echo_rs232();
						break;
					}
					case '3':
					{
						check_watchdog();
						break;
					}
				}
			}
		}
	}
}


void output_check() //Fonction en charge du test des sorties du PIC
{	
	int32 sec_init;

	sec_init=sec;

	printf("Descriptif du test : ");
	printf("Les ports vont succesivement passe de l'etat haut a l'etat bas ");
	printf("La frequence de changement est le Hertz et il y a 7 cycles complets ");
	printf("Le test va bientôt commencer...");

	restart_wdt();
	output_bit(PIN_A0,0);
	output_bit(PIN_A1,0);
	output_bit(PIN_A2,0);
	output_bit(PIN_A3,0);
	output_bit(PIN_A4,0);
	output_bit(PIN_A5,0);
	output_bit(PIN_A6,0);

	output_bit(PIN_B0,0);
	output_bit(PIN_B1,0);
	output_bit(PIN_B2,0);
	output_bit(PIN_B3,0);
	output_bit(PIN_B4,0);
	output_bit(PIN_B5,0);
	output_bit(PIN_B6,0);
	output_bit(PIN_B7,0);

	output_bit(PIN_C0,0);
	output_bit(PIN_C1,0);
	output_bit(PIN_C2,0);
	output_bit(PIN_C3,0);
	output_bit(PIN_C4,0);
	output_bit(PIN_C5,0); 

	restart_wdt();
	delay_ms(20);
	
	printf("Démarrage du test \r\n");	

	while(sec-sec_init<=21)
	{	
		restart_wdt();
		if((sec-sec_init-1)%3==0)
		{		
			
			output_bit(PIN_C0,0);
			output_bit(PIN_C1,0);
			output_bit(PIN_C2,0);
			output_bit(PIN_C3,0);
			output_bit(PIN_C4,0);
			output_bit(PIN_C5,0);
			output_bit(PIN_A1,1);
			output_bit(PIN_A1,1);
			output_bit(PIN_A2,1);
			output_bit(PIN_A3,1);
			output_bit(PIN_A4,1);
			output_bit(PIN_A5,1);
			output_bit(PIN_A6,1);
		}
		if((sec-sec_init-2)%3==0)
		{
			output_bit(PIN_A0,0);
			output_bit(PIN_A1,0);
			output_bit(PIN_A2,0);
			output_bit(PIN_A3,0);
			output_bit(PIN_A4,0);
			output_bit(PIN_A5,0);
			output_bit(PIN_A6,0);		
			output_bit(PIN_B1,1);
			output_bit(PIN_B1,1);
			output_bit(PIN_B2,1);
			output_bit(PIN_B3,1);
			output_bit(PIN_B4,1);
			output_bit(PIN_B5,1);
			output_bit(PIN_B6,1);
			output_bit(PIN_B7,1);
		}
		if((sec-sec_init)%3==0)
		{
			output_bit(PIN_B0,0);
			output_bit(PIN_B1,0);
			output_bit(PIN_B2,0);
			output_bit(PIN_B3,0);
			output_bit(PIN_B4,0);
			output_bit(PIN_B5,0);
			output_bit(PIN_B6,0);
			output_bit(PIN_B7,0);
			output_bit(PIN_C1,1);
			output_bit(PIN_C1,1);
			output_bit(PIN_C2,1);
			output_bit(PIN_C3,1);
			output_bit(PIN_C4,1);
			output_bit(PIN_C5,1); 
		}
 	}
		
	printf("Test achevé \n");
}

void echo_rs232()
{
	char c;
	restart_wdt();	

	printf("Descriptif du test : \r\n");
	printf("Les microcontrolleur lit le port RS232 et le recopie en sortie sur le meme port \r\n");
	printf("Pour quitter le test presser la touche q \r\n");
	printf("Début du programme 'echo'");
	
	while(c!='q')
	{
		restart_wdt();
		if(kbhit())
		{
			c = getc();
			putc(c);
		}
	}

}

void check_watchdog()
{

	int32 ms_init=0;
	int16 duree=1; 
	restart_wdt();
	ms_init=ms;
	while(true)	
	{
		if(ms-ms_init>=duree)
		{
			restart_wdt();
			printf("duree wdt superieur a : %Ld ms",duree);
			duree= duree+10;
			restart_wdt();
			ms_init=ms;
		}
	}
}


