
#include <18F258.h>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)



#org DEFAULT
void main()
{
	char c;
	
	printf("Début du programme 'echo'");
	
	while(true)
	{
		if(kbhit())
		{
			c = getc();
			putc(c);
		}
		
		output_toggle(PIN_B0);
	}
}
