//      Carte Test
//      Version 1.0 - HDT - 28/04/2011
//

#include <18F2580.h>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables utilisées

char c;

// Fonctions

#org DEFAULT
void main()
{
    while(true)
    {
        c = getc();
        putc(c);
    }
}
