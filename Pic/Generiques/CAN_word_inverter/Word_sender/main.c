//		Test CAN
//		Lit une chaîne de caractères sur RS232
//		Quand 8 lettres sont recues, les envoie
//		par CAN.
//		Envoie tout message reçu sur le CAN en RS232

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

#DEFINE CAN_WORD_ID 1
#DEFINE WORD_LEN 6

#org DEFAULT
void main()
{
	// Variables réception CAN
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[255];
	int rxLen;
	
	// Variables réception RS232
	char word[9] = "xxxxxxxx";
	int index = 0;
	
	int i;
		
	printf("Initialisation CAN\n");
	can_init();
	printf("CAN initialisé\n");
	
	while(true)
	{
		if(kbhit() && (index<WORD_LEN))
			word[index++] = getc();
		
		if(can_tbe() && (index==WORD_LEN))
		{
			printf("Sending word '%s'\n",word);
			i = can_putd(CAN_WORD_ID,word,index,1,false,true);
			
			if (i != 0xFF)
			{
				printf("\r\nPUT %U: ID=%U LEN=%U ", i, CAN_WORD_ID, index);
				printf("PRI=%U EXT=%U RTR=%U\r\n   DATA = ", 1, false, true);
				for (i=0;i<index;i++)
					printf("%X ",word[i]);
				printf("\r\n");
			}
			else
				printf("\r\nFAIL on PUTD\r\n");
			
			index = 9;
		}
		
		if(can_kbhit())
		{
			can_getd(rxId,rxData,rxLen,rxStat);
			printf("CAN message received with id #%s : ",rxId);
			for(index=0;index<rxLen;index++)
				putc(rxData[index]);
			index = 0;
		}
		
		output_bit(PIN_A0,can_tbe());
		output_bit(PIN_A1,can_kbhit());
	}
}
