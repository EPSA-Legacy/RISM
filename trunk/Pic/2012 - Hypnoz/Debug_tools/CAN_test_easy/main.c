/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		TEST MINIMUM CAN CARTE1                                //
//		Version 1.00  - BLD - 19/12/2011                       //
//			                                                   //
/////////////////////////////////////////////////////////////////

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F2580.h>
#include <can-18xxx8.c>
#include <debug.h>

#define MAB_TO_PIC 1
#define PIC_TO_MAB 2
#define PONG 3

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

int32 ms; 


// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
	 ms++;
}

void main()
{
	unsigned int8 i=0;
	int r=0;
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;
	int16 * toto=0;
	int8 txdata[8];	
	int16 umot1=1;
	int16 umot2=2;
	int16 usc=3;
	int16 uconv=4;

//	int pongflagemit=0;
//	int pong=0;

	//initialisation des interruptions
	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);   //setup up timer2 to interrupt every 1ms
	//initialisation du CAN
	can_init();							//initialise le CAN


	txdata[0]=umot1;
	txdata[2]=umot2;
	txdata[4]=usc;
	txdata[6]=uconv;
	//  BOUCLE DE SAISIE
	while(true)
	{
		printf("\r\n Tick : %Lu ms \r\n \r\n",ms);
		i++;

		// Envoie sur le CAN
//		if(can_tbe()) // On vérifie que le buffer d'emission est libre
//		{
//			printf("CAN TX %u \r\n",i);
//			printf("uconv : %Ld \r\n",uconv);
//			r=can_putd(23,txdata,8,0,false,false); //emission du message de 8octets

//			if (r != 0xFF)
//			{
//				printf("CAN_TX - %u - ID=%u - LEN=1", r, PIC_TO_MAB);
//			}
//			else
//			{
//				printf("CAN_ERROR - FAIL on can_putd function \r\n");
//			}	
//		}
//		else
//		{
//			printf("Buffer d'emission plein \r\n");
//		}

		// On écoute le can et on retransmet sur le rs232

		if(can_kbhit())
		{
			printf("CAN RX \r\n");
			if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on récupère le message
			{
					toto=rxData;
					printf("RX ID %Lu - Len %d- Value = %Ld \r\n",rxId,rxLen,*toto);
					LOG_TESTING_D(TRACE_ALL||TRACE_BRAKE_LIGHT,"Brake light status incomming from the CAN is ",rxData[0],ms*1000,ms)


			}	
		}
		else 
		{
	//		printf("\r\n Nothing hit the can bus");
		}
	}
}