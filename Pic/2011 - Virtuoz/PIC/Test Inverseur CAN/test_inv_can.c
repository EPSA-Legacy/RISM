//      Carte Test
//      Version 1.0 - HDT - 28/04/2011
//

#include <18F258.h>
#include <can-18xxx8.c>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables utilisées

char s[8];
int i;

// Fonctions

#org DEFAULT
void main()
{
    while(true)
    {
        for(i=0;i<8;i++)
		{
            s[i] = getc();
		}

        if(can_tbe())
        {
            can_putd(1,s,8,1,false,false);
        }
    }
}
