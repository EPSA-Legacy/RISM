//		Test CAN
//		Lit une chaîne de caractères sur RS232
//		Quand 8 lettres sont recues, les envoie
//		par CAN.
//		Envoie tout message reçu sur le CAN en RS232

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

#DEFINE CAN_WORD_ID 1
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
	
	// Variables réception RS232
	char word[9] = "\0\0\0\0\0\0\0\0";
	int index = 0;
	
	// Variables d'envoi
	int32 txId = CAN_WORD_ID;
	int1 txRtr = 0;
	int1 txExt = 0;
	int txPri = 3;

	// Variable util
	int i;
		
	printf("Initializing board...\r\n");
	
	can_init();
	enable_interrupts(GLOBAL);
	enable_interrupts(INT_TIMER2);
	setup_timer_2(T2_DIV_BY_4,79,16);
	
	printf("Running...\r\n");
	printf("Enter string to invert : ");
	
	while(true)
	{
		if(ms>10000)
		{
			printf("Auto sending '");
			for (index=0;index<WORD_LEN;index++)
				word[index] = '1' + index;
			printf("%s'\r\n",word);
			ms = 0;
		}

		if(kbhit() && (index<WORD_LEN))
			word[index++] = getc();
		
		if(can_tbe() && (index==WORD_LEN))
		{
			printf("Sending word '%s'\n",word);
			i = can_putd(txId,word,index,txPri,txExt,txRtr);
			
			if (i != 0xFF)
			{
				printf("\r\nPUT %U: ID=%U LEN=%U ", i, txId, index);
				printf("PRI=%U EXT=%U RTR=%U\r\n   DATA = '", txPri, txExt, txRtr);
				for (i=0;i<index;i++)
					printf("%c",word[i]);
				printf("'\r\n");
			}
			else
				printf("\r\nFAIL on PUTD\r\n");
			
			index = WORD_LEN+1;
		}
		
		if (can_kbhit())	//if data is waiting in buffer...
		{
			if(can_getd(rxId,rxData,rxLen,rxStat))
			{
				printf("\r\nGOT: BUFF=%U ID=%LU LEN=%U OVF=%U ", rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
				printf("FILT=%U RTR=%U EXT=%U INV=%U", rxStat.filthit, rxStat.rtr, rxStat.ext, rxStat.inv);
				printf("\r\n    DATA = '");
				for (i=0;i<rxLen;i++)
					printf("%c",rxData[i]);
				printf("'\r\n");
			}
			else
				printf("\r\nFAIL on GETD\r\n");
			
			index = 0;
			printf("Enter string to invert : ");
		}
	}
}
