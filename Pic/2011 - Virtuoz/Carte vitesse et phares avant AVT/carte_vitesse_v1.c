//
//		Carte Vitesse et Phares avant
//		Version 1.0 - HDT - 08/03/2011
//      Version 1.1 - HDT - 15/03/2011
//      Version 1.2 - HDT - 20/04/2011
//

// Vitesse : regarder toutes les secondes la valeur du timer puis remettre à zéro
// OU
// Si trop lent : regarder le temps entre deux fronts montants (critère : moins de X fronts montants/seconde

// TODO : refaire la prog, timers en external pour la mesure de vitesse.

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

#define PHARES_G        PIN_A1  //réceptionné par CAN
#define PHARES_D        PIN_A3  //réceptionné par CAN
#define CODES_G         PIN_B1  //réceptionné par CAN
#define CODES_D         PIN_C4  //réceptionné par CAN
#define CLIGNO_G        PIN_A5  //réceptionné par CAN
#define CLIGNO_D        PIN_C1  //réceptionné par CAN
#define VITESSE_A       PIN_A4  //destiné à être envoyé par CAN
#define VITESSE_B       PIN_C0  //destiné à être envoyé par CAN

#define VITESSE_SEUIL   10
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

int32 msA = 0;
int32 msB = 0;
int16 ms_clign = 0;

int1 phares = false;
int1 codes = false;
int1 clignd = false;
int1 cligng = false;

int1 clign_on = false;
int1 timer_active = false;
int1 mode_mesureA = true;        //true -> mode "rapide" (vitesseA > VITESSE_SEUIL), false -> mode "lent"
int1 mode_mesureB = true;        //true -> mode "rapide" (vitesseB > VITESSE_SEUIL), false -> mode "lent"

// Fonctions

#inline
void manageCAN();

#inline
void internalLogic();

#int_timer2
void isr_timer2()       // lors de l'interruption du timer 2 (timer global) au bout d'une milliseconde
{
	 msA++;             // ajouter 1 ms.
	 msB++;
	 if(timer_active)   ms_clign++;
}

#org DEFAULT
void main()
{
	setup_adc_ports(NO_ANALOGS);

	set_tris_a(0b00010000);
	set_tris_c(0b00000001);

	enable_interrupts(INT_TIMER2);
	enable_interrupts(GLOBAL);

	setup_timer_0(RTCC_EXT_L_TO_H);     //incrémente à chaque front montant (1 tour de roue)
	setup_timer_1(T1_EXTERNAL);         //incrémente à chaque front montant (1 tour de roue)
	setup_timer_2(T2_DIV_BY_4,79,16);   //setup up timer2 to interrupt every 1ms

	can_init();
	can_set_baud();

	//  BOUCLE DE TRAVAIL
	while(true)
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
		if(can_getd(rxId,rxData,rxLen,rxStat))
		{
            if(rxId == TDB_PHARES_AVT_ID)        // on veut modifier les feux avant ? Utiliser rxData pour activer ou désactiver les feux.
            {
                phares = rxId[0];
                codes = rxId[1];
                cligng = rxId[2];
                clignd = rxId[3];
            }
		}
	}

	if (can_tbe())
    {
        if(rxId == VIT_AVG_ASK_ID)
            can_putd(VIT_AVG_DATA_ID,&vitesseA,8,1,1,0);
        else if(rxId == VIT_AVD_ASK_ID)
            can_putd(VIT_AVD_DATA_ID,&vitesseB,8,1,1,0);
    }
}

#inline
void internalLogic()
{
	output_bit(PHARES_D, phares);
	output_bit(PHARES_G, phares);          // si phares est à true, allumer le phare avant gauche (resp. droit), et inversement
    output_bit(CODES_D, codes);
	output_bit(CODES_G, codes);            // si codes est à true, allumer le feu de codes gauche (resp. droit), et inversement

	timer_active = cligng|clignd;          // si des clignos doivent être allumés, on active le timer de clignotants (latence max. 1ms)
	if(!timer_active)   ms_clign = 0;

	if(ms_clign == 500)                          // environ 500 ms après l'activation du timer 1
	{
		ms_clign = 0;                           // repartir pour 500 ms
		clign_on = !clign_on;                   // changer l'état d'allumage des clignotants

		output_bit(CLIGNO_D, clign_on && clignd);
                                                // allumer ou éteindre le cligno droit s'il est activé
		output_bit(CLIGNO_G, clign_on && cligng);
                                                // allumer ou éteindre le cligno gauche s'il est activé
	}

    //mode rapide
    if(mode_mesure_A)
    {
        if(msA == 1000)
        {
            msA = 0;
            vitesseA = (get_timer0() * CSTE_CAPT_A) / 100;
            set_timer0(0);
        }
    }
    else
    {
        // TODO : Mode lent. Comment mesurer le temps entre *deux impulsions consécutives* ?
    }

    if(mode_mesure_B)
    {
        if(msB == 1000)
        {
            msB = 0;
            vitesseB = (get_timer1() * CSTE_CAPT_B) / 100;
            set_timer1(0);
        }
    }
    else
    {
        // TODO : Mode lent. Comment mesurer le temps entre *deux impulsions consécutives* ?
    }

}
