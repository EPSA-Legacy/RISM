//
//      Carte Vitesse et Phares avant
//      Version 1.0 - HDT - 08/03/2011
//      Version 1.1 - HDT - 15/03/2011
//      Version 1.2 - HDT - 20/04/2011
//      Version 1.3 - HDT - 24/04/2011
//

// Vitesse : regarder toutes les secondes la valeur du timer puis remettre à zéro
// OU
// Si trop lent : regarder le temps entre deux fronts montants (critère : moins de X fronts montants/seconde

// TODO : refaire la prog, timers en external pour la mesure de vitesse.

#include <18F2580.h>
#include <can-18xxx8.c>
#include "CAN_id_v2.h"

#define PHARES_G        PIN_A1  //réceptionné par CAN
#define PHARES_D        PIN_A3  //réceptionné par CAN
#define CODES_G         PIN_B1  //réceptionné par CAN
#define CODES_D         PIN_C4  //réceptionné par CAN
#define CLIGNO_G        PIN_A5  //réceptionné par CAN
#define CLIGNO_D        PIN_C1  //réceptionné par CAN
#define VITESSE_A       PIN_A4  //destiné à être envoyé par CAN
#define VITESSE_B       PIN_C0  //destiné à être envoyé par CAN

#define SPEED_THRESHOLD	 	10
#define CST_CAPT_A			322
#define CST_CAPT_B      	322

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

enum SpeedMode { LOW_SPEED, HIGH_SPEED };

// Variables utilisées
int8 speedA = 0; //donnée après calcul
int8 speedB = 0; //donnée après calcul

int32 msA = 0;          //pour les mesures de vitesse
int32 msB = 0;
int16 ms_clign = 0;     //pour la période des clignotants
int16 ms = 0;           //pour l'envoi régulier du signal de vitesse

int1 phares = false;
int1 codes = false;
int1 clignd = false;
int1 cligng = false;

int1 clign_on = false;
int1 timer_active = false;
SpeedMode measuringModeA = LOW_SPEED;        //mode "lent" par défaut
SpeedMode measuringModeB = LOW_SPEED;        //mode "lent" par défaut

int1 sendSpeed = false;

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
    ms_clign++;
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
            if(rxId == TDB_PHARES_ID)        // on veut modifier les feux avant ? Utiliser rxData pour activer ou désactiver les feux.
            {
                phares = rxData[0];
                codes = rxData[1];
                cligng = rxData[2];
                clignd = rxData[3];
            }
      }
   }

   if (can_tbe())
    {
        if(sendSpeed)
            can_putd(AVT_VITESSE_ID,&speedA,8,1,1,0); //envoi de "vitesse" : moyenne des deux ?
    }
}

#inline
void internalLogic()
{
   output_bit(PHARES_D, phares);
   output_bit(PHARES_G, phares);          // si phares est à true, allumer le phare avant gauche (resp. droit), et inversement
   output_bit(CODES_D, codes);
   output_bit(CODES_G, codes);            // si codes est à true, allumer le feu de codes gauche (resp. droit), et inversement

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
    if(measuringModeA == HIGH_SPEED)
    {
        if(msA == 500)		//TODO : defines
        {
            msA = 0;
            speedA = (get_timer0() * CST_CAPT_A) / 100;
            set_timer0(0);
        }
    }
    else
    {
        if(get_timer0() >= 1)
        {
            speedA = (CST_CAPT_A * 10 * get_timer0()) / msA;
            msA = 0;
            set_timer0(0);
        }
    }

    if(measuringModeB == HIGH_SPEED)
    {
        if(msB == 500)
        {
            msB = 0;
            speedB = (get_timer1() * CST_CAPT_B) / 100;
            set_timer1(0);
        }
    }
    else
    {
        if(get_timer1() >= 1)
        {
            speedB = (CST_CAPT_B * 10 * get_timer1()) / msB;
            msB = 0;
            set_timer1(0);
        }
    }

    if(ms >= 500)
    {
        sendSpeed = true;
        ms = 0;
    }

    measuringModeA = (speedA > SPEED_THRESHOLD) ? HIGH_SPEED : LOW_SPEED;
    measuringModeB = (speedB > SPEED_THRESHOLD) ? HIGH_SPEED : LOW_SPEED;
}
