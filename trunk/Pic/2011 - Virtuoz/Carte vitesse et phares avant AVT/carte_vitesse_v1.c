//
//		Carte Vitesse et Phares avant
//		Version 1.0 - HDT - 08/03/2011
//      Version 1.1 - HDT - 15/03/2011
//      Version 1.2 - HDT - 20/04/2011
//      Version 1.3 - HDT - 24/04/2011
//

// Vitesse : regarder toutes les secondes la valeur du timer puis remettre � z�ro
// OU
// Si trop lent : regarder le temps entre deux fronts montants (crit�re : moins de X fronts montants/seconde

// TODO : refaire la prog, timers en external pour la mesure de vitesse.

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

#define PHARES_G        PIN_A1  //r�ceptionn� par CAN
#define PHARES_D        PIN_A3  //r�ceptionn� par CAN
#define CODES_G         PIN_B1  //r�ceptionn� par CAN
#define CODES_D         PIN_C4  //r�ceptionn� par CAN
#define CLIGNO_G        PIN_A5  //r�ceptionn� par CAN
#define CLIGNO_D        PIN_C1  //r�ceptionn� par CAN
#define VITESSE_A       PIN_A4  //destin� � �tre envoy� par CAN
#define VITESSE_B       PIN_C0  //destin� � �tre envoy� par CAN

#define VITESSE_SEUIL   10
#define CSTE_CAP_A      322
#define CSTE_CAP_B      322

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

// Variables utilis�es
int8 vitesseA = 0; //donn�e apr�s calcul
int8 vitesseB = 0; //donn�e apr�s calcul

int8 contA = 0;
int8 contB = 0;

int1 capA = false;
int1 capB = false;

int32 msA = 0;          //pour les mesures de vitesse
int32 msB = 0;
int16 ms_clign = 0;     //pour la p�riode des clignotants
int16 ms = 0;           //pour l'envoi r�gulier du signal de vitesse

int1 phares = false;
int1 codes = false;
int1 clignd = false;
int1 cligng = false;

int1 clign_on = false;
int1 timer_active = false;
int1 mode_mesureA = true;        //true -> mode "rapide" (vitesseA > VITESSE_SEUIL), false -> mode "lent"
int1 mode_mesureB = true;        //true -> mode "rapide" (vitesseB > VITESSE_SEUIL), false -> mode "lent"

int1 send_vitesse = false;

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

	setup_timer_0(RTCC_EXT_L_TO_H);     //incr�mente � chaque front montant (1 tour de roue)
	setup_timer_1(T1_EXTERNAL);         //incr�mente � chaque front montant (1 tour de roue)
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
            if(rxId == TDB_PHARES_AVT_ID)        // on veut modifier les feux avant ? Utiliser rxData pour activer ou d�sactiver les feux.
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
        if(send_vitesse)
            can_putd(AVT_VITESSE_ID,&vitesseA,8,1,1,0); //envoi de "vitesse" : moyenne des deux ?
    }
}

#inline
void internalLogic()
{
	output_bit(PHARES_D, phares);
	output_bit(PHARES_G, phares);          // si phares est � true, allumer le phare avant gauche (resp. droit), et inversement
    output_bit(CODES_D, codes);
	output_bit(CODES_G, codes);            // si codes est � true, allumer le feu de codes gauche (resp. droit), et inversement

	timer_active = cligng|clignd;          // si des clignos doivent �tre allum�s, on active le timer de clignotants (latence max. 1ms)
	if(!timer_active)   ms_clign = 0;

	if(ms_clign == 500)                          // environ 500 ms apr�s l'activation du timer 1
	{
		ms_clign = 0;                           // repartir pour 500 ms
		clign_on = !clign_on;                   // changer l'�tat d'allumage des clignotants

		output_bit(CLIGNO_D, clign_on && clignd);
                                                // allumer ou �teindre le cligno droit s'il est activ�
		output_bit(CLIGNO_G, clign_on && cligng);
                                                // allumer ou �teindre le cligno gauche s'il est activ�
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
        if(get_timer0() >= 1)
        {
            vitesseA = (CSTE_CAPT_A * 10 * get_timer0()) / msA;
            msA = 0;
            set_timer0(0);
        }
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
        if(get_timer1() >= 1)
        {
            vitesseB = (CSTE_CAPT_B * 10 * get_timer1()) / msB;
            msB = 0;
            set_timer1(0);
        }
    }

    if(ms >= 500)
    {
        send_vitesse = true;
        ms = 0;
    }

    mode_mesure_A = (vitesseA > VITESSE_SEUIL);
    mode_mesure_B = (vitesseB > VITESSE_SEUIL);
}