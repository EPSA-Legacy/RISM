/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Feux Arri�res                                    //
//		Version 1.0 - BLD - 22/11/2011                         //
//                                                             //
/////////////////////////////////////////////////////////////////

// Vitesse : regarder toutes les secondes la valeur du timer puis remettre � z�ro
// OU
// Si trop lent : regarder le temps entre deux fronts montants (crit�re : moins de X fronts montants/seconde

// TODO : refaire la prog, timers en external pour la mesure de vitesse.

//#define CAN_USE_EXTENDED_ID         FALSE

#include <18F2580.h>
#include <can-18xxx8.c>
#include "CAN_id.h"

// Assignation des sorties analogiques
#define CODES		    PIN_A1  
#define PHARES		    PIN_A2  
#define CLIGN_L         PIN_A3  
#define CLIGN_R			PIN_A4
#define VITESSE_A       PIN_A5  // destin� � �tre envoy� par CAN
#define VITESSE_B       PIN_C0  // destin� � �tre envoy� par CAN


// D�finition des constantes caract�ristiques du capteur de vitesse
#define SPEED_THRESHOLD	 	10
#define CST_CAPT_A			322
#define CST_CAPT_B      	322

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

enum SpeedMode { LOW_SPEED, HIGH_SPEED };

// Variables globales
int8 speedL=0; 				    // donn�e apr�s calcul
int8 speedR=0; 					// donn�e apr�s calcul

unsigned int16 msL=0;           // pour les mesures de vitesse � gauche
unsigned int16 msR=0;		    // pour les mesures de vitesse � droite
unsigned int16 clign=0;         // variable temporelle pour les clignotants
unsigned int16 ms=0;            // variable temporelle
unsigned int16 sec=0;			// contient les secondes du uptime.

int1 phares=0;
int1 codes=0;
int1 blinkl=0;
int1 blinkr=0;
int8 blinkl_ack=0;
int8 blinkr_ack=0;
int8 light_ack=0;

int1 clign_on = false;
int1 timer_active = false;
SpeedMode measuringModeA = LOW_SPEED;        //mode "lent" par d�faut
SpeedMode measuringModeB = LOW_SPEED;        //mode "lent" par d�faut

int1 sendSpeed = false;
// TO BE CONTINUED
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
            if(rxId == TDB_PHARES_ID)        // on veut modifier les feux avant ? Utiliser rxData pour activer ou d�sactiver les feux.
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
   output_bit(PHARES_G, phares);          // si phares est � true, allumer le phare avant gauche (resp. droit), et inversement
   output_bit(CODES_D, codes);
   output_bit(CODES_G, codes);            // si codes est � true, allumer le feu de codes gauche (resp. droit), et inversement

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
