//      Carte Test
//      Version 1.0 - HDT - 28/04/2011
//

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables utilisées

char s[5] = "toto";
int i;

// Fonctions

#org DEFAULT
void main()
{
    struct rx_stat rxStat;
    int32 rxId;
    int8 rxData[8];
    int8 rxLen;

	can_init();
	can_set_baud();

    while(true)
    {
        /*for(i=0;i<8;i++)
		{
            s[i] = getc();
		}*/

        if(can_tbe())
        {
            can_putd(1,s,5,1,false,false);
        }

        /*if(can_kbhit())
        {
            can_getd(rxId,rxData,rxLen,rxStat);
			if(rxId == 2)
			{
                for(i=0;i<rxLen;i++)
                    putc(s[i]);
			}
        }*/
		
		output_toggle(PIN_B0);
		delay_ms(100);
    }
}
