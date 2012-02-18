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

#include <18F258.h>
#include <can-18xxx8.c>

#define MAB_TO_PIC 1
#define PIC_TO_MAB 2
#define PONG 3

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=19600,xmit=PIN_C6,rcv=PIN_C7)

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
//	int pongflagemit=0;
//	int pong=0;

	//initialisation des interruptions
	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);   //setup up timer2 to interrupt every 1ms
	//initialisation du CAN
	can_init();							//initialise le CAN

	//  BOUCLE DE SAISIE
	while(true)
	{
		delay_ms(200);
		printf("\r\n Tick : %Lu ms \r\n \r\n",ms);
		i++;
		// Envoie sur le CAN
		if(can_tbe()) // On vérifie que le buffer d'emission est libre
		{
			printf("CAN TX %u \r\n",i);
			r=can_putd(PIC_TO_MAB,&i,1,0,false,false); //emission du message de 8octets
			if (r != 0xFF)
			{
				printf("CAN_TX - %u - ID=%u - LEN=1", r, PIC_TO_MAB);
			}
			else
			{
				printf("CAN_ERROR - FAIL on can_putd function \r\n");
			}	
		}
		else
		{
			printf("Buffer d'emission plein \r\n");
		}

		// On écoute le can et on retransmet sur le rs232

		if(can_kbhit())
		{
			printf("CAN RX \r\n");
			if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on récupère le message
			{
				if(rxId==MAB_TO_PIC)
				{
					printf("RX MAB_TO_PIC = %d \r\n",rxData[0]);
				}
/*				else if(rxId==PONG)
				{
					pong=rxData[0];
					pong++;
					pongflagemit=1;
					printf("RX PONG = %d \r\n",rxData[0]);
				}*/
				else
				{
					printf("CAN_DEBUG - BUFF=%u - ID=%u - LEN=%u - OVF=%u \r\n",rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
				}
		
			}
			else
			{
				printf(" CAN_DEBUG - FAIL on can_getd function \r\n");
			}
		
		}
		else 
		{
			printf("\r\n Nothing hit the can bus");
		}
	}
}