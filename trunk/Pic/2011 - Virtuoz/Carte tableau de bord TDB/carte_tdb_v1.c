//		Carte Tableau de Bord
//		Version 1.0 - HDT - 20/04/2011
//      Version 1.1 - HDT - 22/04/2011

#include <18F2580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//TODO : définir les grandeurs entrantes et sortantes

#define COMM_6_0        PIN_E0  //TODO : quelle est l'utilité de ce commutateur ? Où va-t-il ?
#define COMM_6_1        PIN_A5
#define COMM_6_2        PIN_A4
#define BOOST           PIN_A0      //Boost : vers MAB ?
#define BRAKE           PIN_C2      //Frein : vers MAB ?
#define CODES           PIN_D4      //Codes : vers ARR
#define FEUX            PIN_C5      //Tous feux sauf stop et clignos : vers ARR et AVT
#define TEMOIN_CMD      PIN_C4  //TODO : C'est quoi ?
#define WARNING         PIN_D3      //Warning : deux clignotants simultanés. Vers AVT et ARR
#define ERR_1           PIN_D2  //TODO : ?
#define ERR_2           PIN_D0  //TODO : ?
#define ERR_3           PIN_D1  //TODO : ?
#define CLIGN_G         PIN_D5      //Cligno gauche : vers AVT et ARR
#define CLIGN_D         PIN_D6      //Cligno droit : vers AVT et ARR


#fuses HS,NOPROTECT,NOLVP,NOWDT
#use delay(clock=20000000)

// Variables utilisées

int16 ms = 0;                   // incrément du timer
int16 msboost = 0;
int16 msbrake = 0;

int16 periode_boost = 1000;     // période d'envoi du signal de boost, plus rapide en mode d'attente de ACK_BOOST
int16 periode_brake = 1000;     // période d'envoi du signal de frein, plus rapide en mode d'attente de ACK_BRAKE

int1 send_phares = false;       // autorisation d'envoyer la donnée des phares et clignos
int1 send_boost = false;        // autorisation d'envoyer la donnée de boost
int1 send_brake = false;        // autorisation d'envoyer la donnée de frein

int8 state_phares = 0b00000000; // état des phares : 000 - warning - clign_g - clign_d - codes - feux.
int1 state_boost = false;       // état boost.
int1 state_brake = false;       // état frein.
int8 newstate = 0b00000000;     // nouvel état pour comparer.


// Fonctions

#inline
void manageCAN();

#inline
void internalLogic();

#int_timer2
void isr_timer2()
{
	 ms++;
	 msboost++;
	 msbrake++;
}

#org DEFAULT
void main()
{
	setup_adc_ports(NO_ANALOGS);        //TODO : vérifier s'il existe des entrées analogiques pour le TdB
	set_tris_a(0b00110001);
	set_tris_c(0b00010100);
	set_tris_d(0b01110001);
	set_tris_e(0b00000001);

	enable_interrupts(INT_TIMER2);
	enable_interrupts(INT_TIMER1);
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,79,16);    //Le Timer 2 reprend à zéro toutes les millisecondes environ.

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

	int1 txData[8];

	if(can_kbhit())     // Une donnée est présente dans le buffer de réception du CAN
	{
		if(can_getd(rxId,rxData,rxLen,rxStat))
		{
			switch(rxId)    // TODO : Le TdB reçoit des données ? Vérifier lesquelles
			{
                case MAB_BOOST_ACK_ID:
                    periode_boost = 1000;
                    state_boost = false;
                    break;

                case MAB_BRAKE_ACK_ID:
                    periode_brake = 1000;
                    state_brake = false;
                    break;
			}
		}
	}

	if(can_tbe())
	{
	    if(send_phares)
	    {
	        txData[0] = input(FEUX);
	        txData[1] = input(CODES)|input(FEUX);
	        txData[2] = input(CLIGN_G)|input(WARNING);
	        txData[3] = input(CLIGN_D)|input(WARNING);
	        can_putd(TDB_PHARES_ID,txData,4,1,false,false);
	    }

	    if(send_boost)
	    {
	        txData[0] = state_boost;
	        can_putd(TDB_BOOST_ID,txData,1,1,false,false);
	    }
	    if(send_brake)
	    {
	        txData[0] = state_brake;
	        can_putd(TDB_BRAKE_ID,txData,1,1,false,false);
	    }
	}

}

#inline
void internalLogic()
{
    newstate = input(FEUX)+2*input(CODES)+4*input(CLIGN_D)+8*input(CLIGN_G)+16*input(WARNING);

    if(ms >= 1000 || state_phares&newstate != 0b00000000)
    {
        send_phares = true;
        state_phares = newstate;
        ms = 0;
    }

    if(msboost >= periode_boost || input(BOOST))
    {
        send_boost = true;
        if(input(BOOST))
        {
            state_boost = true;
            periode_boost = 200;
        }
        msboost = 0;
    }

    if(msbrake >= periode_brake || input(BRAKE))
    {
        send_brake = true;
        if(input(BRAKE))
        {
            state_brake = true;
            periode_brake = 200;
        }
        msbrake = 0;
    }
}

