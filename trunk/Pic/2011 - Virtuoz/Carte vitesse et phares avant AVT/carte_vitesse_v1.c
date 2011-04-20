//		Carte Vitesse
//		Version 3.0 - PJR - 03/06/2009
//
//		PIN A4 <-> VitesseA <-> vitesse avant gauche
//		PIN C0 <-> VitesseB <-> vitesse avant droite

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

#define LED1        PIN_B0
#define LED2        PIN_B1
#define VITESSE_A     PIN_A4
#define VITESSE_B     PIN_C0

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

// Variables utilisées
int8 vitesseA = 0; //donnée après calcul
int8 vitesseB = 0; //donnée après calcul

int8 contA = 0;
int8 contB = 0;

int1 capA = false;
int1 capB = false;

int16 ms = 0;

// Fonctions

#inline
void calculeVitesseA();

#inline
void calculeVitesseB();

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
	setup_adc_ports(NO_ANALOGS);

	set_tris_a(0b00010000);
	set_tris_c(0b00000001);

	enable_interrupts(INT_TIMER2);
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,79,16);   //setup up timer2 to interrupt every 1ms
	delay_ms(T_INIT_VITESSE_AV);
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

	if(can_kbhit())
	{
		if(can_getd(rxId,&rxData[0],rxLen,rxStat))
		{
			if (can_tbe())
			{
				if(rxId == VIT_AVG_ASK_ID)
					can_putd(VIT_AVG_DATA_ID,&vitesseA,1,PRIORITY_VIT1,1,0);
				else if(rxId == VIT_AVD_ASK_ID)
					can_putd(VIT_AVD_DATA_ID,&vitesseB,1,PRIORITY_VIT1,1,0);
			}
		}
	}
}

#inline
void internalLogic()
{
	if(ms == 1000)
	{
		ms = 0;
		calculeVitesseA();
		calculeVitesseB();
		contA = 0;
		contB = 0;
	}

	output_low(LED1);
	output_low(LED2);

	//Capteur de vitesse A
	if (input(VITESSE_A))
	{
		output_high(LED1);
		if(!capA)
		{
			capA = true;
			contA++;
		}
	}
	else
		capA = false;

	//	Capteur de vitesse B
	if (input(VITESSE_B))
	{
		output_high(LED2);
		if(capB == false)
		{
			capB = true;
			contB++;
		}
	}
	else
		capB = false;
}

#inline
void calculeVitesseA()
{
   vitesseA = (contA * 322) / 100;
}

#inline
void calculeVitesseB()
{
   vitesseB = (contB * 322) / 100;
}

