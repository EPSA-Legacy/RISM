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

#org DEFAULT
void main()
{
	// Variables réception CAN
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[255];
	int8 rxLen;
	
	// Variables réception RS232
	char word[9];
	int8 index = 0;
		
	printf("Initialisation CAN\n");
	can_init();
	printf("CAN initialisé\n");
	
	word[8] = 0;

	while(true)
	{
		if(kbhit() && (index<8))
			word[index++] = getc();
		
		if(can_tbe() && (index==8))
		{
			printf("Sending word '%s'\n",word);
			can_putd(CAN_WORD_ID,word,index,1,false,false);
			printf("Word sent\n");
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
	}
}
