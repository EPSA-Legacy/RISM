//		Test vitesse CAN
//		Incrémente par rebond les trames CAN

#define CAN_USE_EXTENDED_ID			FALSE
#define CAN_BRG_PRESCALAR			0
#define CAN_BRG_PROPAGATION_TIME	1
#define CAN_BRG_PHASE_SEGMENT_1		3
#define CAN_BRG_PHASE_SEGMENT_2		2

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

#DEFINE CAN_WORD_ID 1
#DEFINE WORD_LEN 8

#DEFINE CARTE_1 FALSE

int16 ms=0;

#int_timer2
void isr_timer2()
{
	ms++;
}

#inline
void increment(char *word)
{
	signed int i=WORD_LEN-1;
	while((i>=0) && (word[i]=='9'))
		word[i--] = '0';
	if(i>=0)
		word[i]++;
}

#org DEFAULT
void main()
{
	// Variables réception CAN
	struct rx_stat rxStat;
	int32 rxId;
	char rxData[9] = "00000000";
	int rxLen;
	
	// Variables d'envoi
	int32 txId = CAN_WORD_ID;
	int1 txRtr = 0;
	int1 txExt = 0;
	int txPri = 3;

	// Variable util
	int16 i = 0;
		
	printf("Initializing board...\r\n");
	
	can_init();
	enable_interrupts(GLOBAL);
	enable_interrupts(INT_TIMER2);
	setup_timer_2(T2_DIV_BY_4,79,16);
	
	printf("Running...\r\n");
	
	if(CARTE_1)
	{
		printf("Press a key to start\r\n");
		while(!kbhit());
		can_putd(txId,rxData,WORD_LEN,txPri,txExt,txRtr);
	}

	while(true)
	{	
		if (can_kbhit())	//if data is waiting in buffer...
		{
			if(can_getd(rxId,rxData,rxLen,rxStat))
			{
				if(CARTE_1)
				{
					i++;
					if(i>=1000)
					{
						i-=1000;
						printf(rxData);
						printf("\r\n");
					}
				}
				increment(rxData);
				can_putd(txId,rxData,rxLen,txPri,txExt,txRtr);
			}
			else
				printf("\r\nFAIL on GETD\r\n");			
		}
	}
}
