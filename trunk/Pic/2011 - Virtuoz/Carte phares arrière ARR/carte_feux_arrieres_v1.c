//      Carte Test
//      Version 1.0 - HDT - 28/04/2011
//

#include <18F2580.h>

#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)
#use rs232

// Variables utilis�es



// si cligng == clignd == true -> mode warning



// Fonctions

#inline
void manageRS232();

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
      manageRS232();
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
            case TDB_PHARES_ID :
               feuxarr = rxData[0];
               cligng = rxData[2];
               clignd = rxData[3];
               break;

            case MAB_STOP_ID :
               feuxstop = rxData[0];
               if(can_tbe())
               {
                  can_putd(ARR_STOP_ACK_ID,0,0,3,false,false);
               }
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

