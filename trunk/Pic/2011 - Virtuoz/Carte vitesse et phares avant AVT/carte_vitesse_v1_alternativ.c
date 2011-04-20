//
//		Carte Vitesse et Phares avants
//		Version 1.0 - HDT - 08/03/2011
//      Version 1.1 - HDT - 15/03/2011
//

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

#define PHARES_G        PIN_A4  //réceptionné par CAN
#define PHARES_D        PIN_C0  //réceptionné par CAN
#define CODES_G         PIN_A5  //réceptionné par CAN
#define CODES_D         PIN_C1  //réceptionné par CAN
#define CLIGNO_G        PIN_A1  //réceptionné par CAN
#define CLIGNO_D        PIN_A3  //réceptionné par CAN
#define VITESSE_A       PIN_A0  //destiné à être envoyé par CAN
#define VITESSE_B       PIN_A2  //destiné à être envoyé par CAN

#define CSTE_CAP_A      322
#define CSTE_CAP_B      322

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
int8 ms_clign = 0;

int1 pharesd = false;
int1 pharesg = false;
int1 codesd = false;
int1 codesg = false;
int1 clignd = false;
int1 cligng = false;

int1 clign_on = false;
int1 timer1_active = false;

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
void isr_timer2()       // lors de l'interruption du timer 2 (timer de détection de vitesse) au bout d'une milliseconde
{
	 ms++;              // ajouter 1 ms. Au bout de 1000 ms une mesure de vitesse se fera.
}

#int_timer1
void isr_timer1()       // lors de l'overflow du timer 1 (timer de clignotant avant) au bout de 26,2144 ms
{
    ms_clign++;         // ajouter une période. Au bout de 19 périodes (env. 498 ms) changement d'état du clignotant.
}

#org DEFAULT
void main()
{
	setup_adc_ports(NO_ANALOGS);

	set_tris_a(0b00000101);
	set_tris_c(0b00000000);

	enable_interrupts(INT_TIMER1);
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
                else if(rxId == FEUX_AV_DATA_ID)        // on veut modifier les feux avant ? Utiliser rxData pour activer ou désactiver les feux.
                {
                    pharesd = rxId[0];
                    pharesg = rxId[1];
                    codesd = rxId[2];
                    codesg = rxId[3];
                    clignd = rxId[4];
                    cligng = rxId[5];
                }
			}
		}
	}
}

#inline
void internalLogic()
{
	output_bit(PHARES_D, pharesd);
	output_bit(PHARES_G, pharesg);          // si pharesg (resp. pharesd) est à true, allumer le phare avant gauche (resp. droit), et inversement
    output_bit(CODES_D, codesd);
	output_bit(CODES_G, codesg);            // si pharesg (resp. pharesd) est à true, allumer le feu de croisement avant gauche (resp. droit), et inversement

	if(cligng|clignd)                       // si un clignotant est activé
	{
	    if(!timer1_active)
	    {
	        setup_timer_1(T1_DIV_BY_2);         // Régler le timer 1 : overflow toutes les 26,2 ms environ
	        timer1_active = true;
        }
	}
	else                                        // si aucun clignotant n'est activé
	{
	    setup_timer_1(T1_DISABLED);             // Désactiver le timer 1
	    timer1_active = false;
	}

	if(ms_clign == 19)                          // environ 500 ms après l'activation du timer 1
	{
		ms_clign = 0;                           // repartir pour 500 ms
		clign_on = !clign_on;                   // changer l'état d'allumage des clignotants

		output_bit(CLIGNO_D, clign_on && clignd);
                                                // allumer ou éteindre le cligno droit s'il est activé
		output_bit(CLIGNO_G, clign_on && cligng);
                                                // allumer ou éteindre le cligno gauche s'il est activé
	}

	if(ms == 1000)
	{
		ms = 0;
		calculeVitesseA();
		calculeVitesseB();
		contA = 0;
		contB = 0;
	}

	//Capteur de vitesse A
	if (input(VITESSE_A))
	{
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
   vitesseA = (contA * CSTE_CAPT_A) / 100;
}

#inline
void calculeVitesseB()
{
   vitesseB = (contB * CSTE_CAPT_B) / 100;
}

