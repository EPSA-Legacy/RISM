//		Test CAN
//		Inverse toute chaine de caractères reçue sur le CAN
//		puis la renvoie

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

#DEFINE CAN_WORD_BACK_ID 2

#org DEFAULT
void main()
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[255];
	int8 rxLen;
	int8 i;
	int8 inverted[255];
	
	can_init();
	
	while(true)
	{
		if(can_kbhit())
		{
			can_getd(rxId,rxData,rxLen,rxStat);
			if(rxId == 1)
			{
				for(i=0;i<rxLen;i++)
					inverted[rxLen-1-i] = rxData[i];
				
				if(can_tbe())
					can_putd(CAN_WORD_BACK_ID,inverted,rxLen,1,false,false);
			}
		}
	}
}
