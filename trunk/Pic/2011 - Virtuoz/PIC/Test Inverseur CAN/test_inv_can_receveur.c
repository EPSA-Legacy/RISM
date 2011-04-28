//      Carte Test
//      Version 1.0 - HDT - 28/04/2011
//

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables utilis�es

char s[8];
int i;

// Fonctions

#org DEFAULT
void main()
{
    struct rx_stat rxStat;
    int32 rxId;
    int8 rxData[8];
    int8 rxLen;

    while(true)
    {
        if(can_kbhit())
		{
			can_getd(rxId,rxData,rxLen,rxStat);
			if(rxId == 1)
			{
			    for(i=0;i<8;i++)
                {
                    s[7-i] = rxData[i];
                }
			}
		}

		for(i=0;i<8;i++)
            putc(s[i]);
    }
}
