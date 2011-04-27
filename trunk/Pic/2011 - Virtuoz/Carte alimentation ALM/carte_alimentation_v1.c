//      Carte Alimentation
//      Version 1.0 - HDT - 04/04/2011
//      Version 1.1 - HDT - 21/04/2011
//

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id_v2.h>

#define U_ADAPT         PIN_A0
#define V_SEUIL         PIN_A2

#define BATT_MAX        192     //en 8bits. En 16bits : 49282
#define BATT_MIN        175     //en 8bits. En 16bits : 44957

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

// Variables utilisées

int16 ms = 0;
int16 tension_courante = BATT_MAX;
int8 charge_courante = 100;
int8 i = 0;
int1 send_charge = false;

const int8 charges[] = {100,90,80,70,60,50,40,30,20,15,10,5,2,0};
const int8 charges_reelles[] = {100,95,90,85,75,70,65,55,45,35,25,15,5,0};

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
   setup_adc_ports(ALL_ANALOG);        //Les ports sont analogiques, RA3 (+5V) est la référence...

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
void manageCAN()
{
   /*struct rx_stat rxStat;
   int32 rxId;
   int8 rxData[8];
   int8 rxLen;*/


   /*if(can_kbhit())     // Une donnée est présente dans le buffer de réception du CAN
   {
      if(can_getd(rxId,&rxData[0],rxLen,rxStat))
      {
         if(rxId == XXX_ID)        // TODO : reçoit-on une donnée pour la carte alim ? Pas sûr !
         {

         }
      }
   }*/
   if(can_tbe())
   {
       if(send_charge)
       {
           can_putd(ALM_CHARGE_ID,&charge_courante,8,1,false,false);
       }
   }
}

#inline
void internalLogic()
{
   tension_courante = read_adc();
   i = 0;

   while(tension_courante < charges_reelles[i]*(BATT_MAX-BATT_MIN)+BATT_MIN)
   {
       i++;
   }

   charge_courante = charges[i];

   if(ms >= 2000)
   {
       send_charge = true;
       ms = 0;
    }
}

