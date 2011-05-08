//		Test CAN
//		Inverse toute chaine de caractères reçue sur le CAN
//		puis la renvoie

#define CAN_USE_EXTENDED_ID         FALSE

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
	int8 rxData[8];
	int8 rxLen;
	int8 i;
	int8 inverted[8];
	
	printf("Initializing CAN...\r\n");
	can_init();

	for(i=0;i<8;i++)
	{
		rxData[i]=0;
		inverted[i]=0;
	}

	printf("Running...\r\n");
	
	while(true)
	{
		if(can_kbhit())
		{
			if(can_getd(rxId, &rxData[0], rxLen, rxStat))
			{
				printf("\r\nGOT: BUFF=%U ID=%LU LEN=%U OVF=%U ", rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
				printf("FILT=%U RTR=%U EXT=%U INV=%U", rxStat.filthit, rxStat.rtr, rxStat.ext, rxStat.inv);
				printf("\r\n    DATA = '");
				for (i=0;i<rxLen;i++)
					printf("%c",rxData[i]);
				printf("'\r\n");
				
				if(rxId == 1)
				{
					for(i=0;i<rxLen;i++)
						inverted[rxLen-1-i] = rxData[i];
					while(!can_tbe());
					i = can_putd(CAN_WORD_BACK_ID,inverted,rxLen,2,false,false);
			
					if (i != 0xFF)
					{
						printf("\r\nPUT %U: ID=%U LEN=%U ", i, CAN_WORD_BACK_ID, rxLen);
						printf("PRI=%U EXT=%U RTR=%U\r\n   DATA = '", 2, false, false);
						for (i=0;i<rxLen;i++)
							printf("%c",inverted[i]);
						printf("'\r\n");
					}
					else
						printf("\r\nFAIL on PUTD\r\n");
				}
			}
			else
				printf("\r\nFAIL on GETD\r\n");
		}
	}
}
