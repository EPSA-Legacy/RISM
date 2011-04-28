//      Carte Supercapas
//      Version 1.0 - HDT -26/04/2011
//

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id_v2.h>

#define ERR_SC1         PIN_A0
#define ERR_SC2         PIN_A1
#define ERR_SC3         PIN_A5
#define ERR_SC4         PIN_A4
#define TSC1            PIN_C1
#define TSC2            PIN_A2
#define TSC3            PIN_A3
#define TSC4            PIN_C0

#define BATT_MAX        192     //en 8bits. En 16bits : 49282
#define BATT_MIN        175     //en 8bits. En 16bits : 44957

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

// Variables utilisées

int16 ms = 0;
int1 send_error = false;
int1 send_temp = false;

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
   setup_adc_ports(NO_ANALOGS);
   set_tris_a(0b00111111);
   set_tris_c(0b00000011);

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
   //struct rx_stat rxStat;
   //int32 rxId;
   //int8 rxData[8];
   //int8 rxLen;

    int1 txData[8];

   /*if(can_kbhit())     // Une donnée est présente dans le buffer de réception du CAN
   {
      if(can_getd(rxId,rxData,rxLen,rxStat))
      {
         if(rxId == XXX_ID)        // TODO : reçoit-on une donnée pour la carte sc ? Pas sûr !
         {

         }
      }
   }*/

   if(can_tbe())
   {
       if(send_error)
       {
           txData[3] = input(ERR_SC4);
           txData[2] = input(ERR_SC3);
           txData[1] = input(ERR_SC2);
           txData[0] = input(ERR_SC1);
           can_putd(SCP_ERR_ID,txData,4,1,false,false);
       }

       if(send_temp)
       {
           txData[3] = input(TSC4);
           txData[2] = input(TSC3);
           txData[1] = input(TSC2);
           txData[0] = input(TSC1);
           can_putd(SCP_TEMP_ID,txData,4,1,false,false);
       }
   }
}

#inline
void internalLogic()
{

}

