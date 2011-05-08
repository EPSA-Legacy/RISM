//		Test CAN loopback

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

#DEFINE CAN_ID 1
#DEFINE WORD_LEN 6

int16 ms=0;

#int_timer2
void isr_timer2()
{
	ms++;
}

#org DEFAULT
void main()
{
	// Variables réception CAN
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[255];
	int rxLen;
	
	// Message
	char word[9] = "message";
	
	int i;
	
	printf("Init...\n");
	
	can_init();
	
	can_set_mode(CAN_OP_LOOPBACK); 
	enable_interrupts(GLOBAL);
	enable_interrupts(INT_TIMER2);
	setup_timer_2(T2_DIV_BY_4,79,16);
	
	printf("Running...\n");
	
	while(true)
	{
		if(can_tbe() && (ms>250))
		{
			ms=0;
			i = can_putd(CAN_ID,word,WORD_LEN,0,false,false);
			
			if (i != 0xFF)
			{
				printf("\r\nPUT %U: ID=%U LEN=%U ", i, CAN_ID, WORD_LEN);
				printf("PRI=%U EXT=%U RTR=%U\r\n   DATA = ", 0, false, false);
				for (i=0;i<WORD_LEN;i++)
					printf("%X ",word[i]);
				printf("\r\n");
			}
			else
				printf("\r\nFAIL on PUTD\r\n");
		}
		
		if (can_kbhit())	//if data is waiting in buffer...
		{
			if(can_getd(rxId, rxData, rxLen, rxStat))
			{
				printf("\r\nGOT: BUFF=%U ID=%LU LEN=%U OVF=%U ", rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
				printf("FILT=%U RTR=%U EXT=%U INV=%U", rxStat.filthit, rxStat.rtr, rxStat.ext, rxStat.inv);
				printf("\r\n    DATA = ");
				for (i=0;i<rxLen;i++)
					printf("%X ",rxData[i]);
				printf("\r\n");
			}
			else
				printf("\r\nFAIL on GETD\r\n");
		}
	}
}
