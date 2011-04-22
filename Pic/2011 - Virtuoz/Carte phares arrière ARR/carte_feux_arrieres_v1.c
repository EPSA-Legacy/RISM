//		Carte Feux Arri�res
//		Version 1.0 - HDT - 02/03/2011
//      Version 1.1 - HDT - 18/04/2011
//      Version 1.2 - HDT - 22/04/2011
//

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

#define FEUX_STOP       PIN_A0
#define FEUX_ARR        PIN_A1
#define CLIGN_ARG       PIN_A2
#define CLIGN_ARD       PIN_A3

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

// Variables utilis�es

int1 feuxstop = false;
int1 feuxarr = false;
int1 clignd = false;
int1 cligng = false;

// si cligng == clignd == true -> mode warning

int1 clign_on = false;
int1 timer_active = false;

int16 ms = 0;

// Fonctions

#inline
void manageCAN();

#inline
void internalLogic();

#int_timer2
void isr_timer2()
{
	 if(timer_active)ms++;
}

#org DEFAULT
void main()
{
	setup_adc_ports(NO_ANALOGS);

	enable_interrupts(INT_TIMER2);
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,79,16);   //setup up timer2 to interrupt every 1ms
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
void manageCAN()        //cette carte ne fait qu'�couter le CAN, elle n'a aucune donn�e � envoyer.
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;

	if(can_kbhit())     // Une donn�e est pr�sente dans le buffer de r�ception du CAN
	{
		if(can_getd(rxId,rxData,rxLen,rxStat))
		{
			switch(rxId)        // on veut modifier les feux arri�re ? Utiliser rxData pour activer ou d�sactiver les feux.
			{
                case TDB_PHARES_ID:
                    feuxarr = rxData[0];
                    cligng = rxData[2];
                    clignd = rxData[3];
                    break;

                case MAB_STOP_ID:
                    feuxstop = rxData[0];
                    break;
			}
		}
	}
}

#inline
void internalLogic()
{
	output_bit(FEUX_STOP, feuxstop);            // si feuxstop est � true, allumer les feux stop, et inversement
	output_bit(FEUX_ARR, feuxarr);              // si feuxarr est � true, allumer les feux arri�re, et inversement

	timer_active = cligng|clignd;
	if(!timer_active)   ms = 0;

	if(ms == 500)                               // 500 ms apr�s l'activation du timer
	{
		ms = 0;                                 // repartir pour 500 ms
		clign_on = !clign_on;                   // changer l'�tat d'allumage des clignotants

		output_bit(CLIGN_ARD, clign_on && clignd);
                                                // allumer ou �teindre le cligno droit s'il est activ�
		output_bit(CLIGN_ARG, clign_on && cligng);
                                                // allumer ou �teindre le cligno gauche s'il est activ�
	}

}

