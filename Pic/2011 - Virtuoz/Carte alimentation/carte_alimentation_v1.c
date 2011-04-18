//		Carte Alimentation
//		Version 1.0 - HDT - 02/03/2011
//

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

#define U_ADAPT         PIN_A0
#define V_SEUIL         PIN_A2

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

// Variables utilis�es

int16 ms = 0;

// Fonctions

#inline
void manageCAN();

#inline
void internalLogic();

#int_timer2
void isr_timer2()
{
	 ms++;
}

#org DEFAULT
void main()
{
	setup_adc_ports(ANALOG_RA3_REF);        //Les ports sont analogiques, RA3 (+5V) est la r�f�rence...

	enable_interrupts(INT_TIMER2);
	enable_interrupts(GLOBAL);

	//setup_timer_2(T2_DIV_BY_4,79,16);   //setup up timer2 to interrupt every 1ms
	can_init();
	can_set_baud();

	//  BOUCLE DE TRAVAIL
	while(TRUE)
	{
		internalLogic();
		manageCAN();
	}
}

#inline
void manageCAN()
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;

	if(can_kbhit())     // Une donn�e est pr�sente dans le buffer de r�ception du CAN
	{
		if(can_getd(rxId,&rxData[0],rxLen,rxStat))
		{
			if(rxId == XXX_ID)        // TODO : re�oit-on une donn�e pour la carte alim ? Pas s�r !
			{

			}
		}
	}
}

#inline
void internalLogic()
{
	//TODO : Regarder datasheet de la batterie pour pouvoir calculer son �tat de charge � partir de Vseuil-.
}

