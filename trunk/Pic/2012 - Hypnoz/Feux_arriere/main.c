/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Carte Feux Arri�res                                    //
//		Version 1.00  - BLD - 24/10/2011                       //
//      Version 1.01  - BLD - 27/11/2011 -> renommage variable //    
//	    Version 1.02  - BLD - 27/11/2011 -> trace debug        //
//			                                                   //
/////////////////////////////////////////////////////////////////

#include <18F258.h>
#include <can-18xxx8.c>
#include <CAN_id.h>

//#define CAN_USE_EXTENDED_ID         FALSE

// Assignation des sorties analogiques
#define FEUX            PIN_A0
#define CLIGN_L         PIN_A1
#define CLIGN_R         PIN_A2
#define FEUX_STOP       PIN_A3

//Mode debug commenter la ligne pour l'enlever
#define DEBUG 1
#define TRACE 1
#define TRACE_CAN 1

#ifdef DEBUG
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#else
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#endif
#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compt� � l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime
unsigned int8 clign_ms=0;                         // variable temporelle pour leclign_msotant

int16 tmp=0;						           // variable temporaire

int1 blinkl_ack=0;                             // flag valant 1 lorsqu'il faut envoyer l'accus� de r�ception du message BLINK_ORDER_LEFT
int1 blinkr_ack=0;                             // flag valant 1 lorsqu'il faut envoyer l'accus� de r�ception du message BLINK_ORDER_RIGHT
int1 light_ack=0;                              // flag valant 1 lorsqu'il faut envoyer l'accus� de r�ception du message LIGHT_ORDER
int1 blink_left=0;                             // �tat duclign_msotant gauche 1=>command� 0=>�teint
int1 blink_right=0;                            // �tat duclign_msotant droit 1=>command� 0=>�teint
int1 blink_status=0;                           // variable toggle � la fr�quence desclign_msotants
int1 brake=0;                                  // �tat des feux stops
int1 light=0;                                  // �tat des feux de croisement

// Prototypes de fonctions
#inline
void listenCAN();

#inline
void sendCAN();

#inline
void internalLogic();


// M�thode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
	 ms++;
    clign_ms++;
     if(ms>=1000)
	 {
		ms=0;
		sec++;
	 }
}

#org DEFAULT
void main()
{
	//initialisation du PIC
	setup_adc_ports(NO_ANALOGS);        //on g�re toutes les entr�es comme �tant de type num�rique

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,79,16);   //setup up timer2 to interrupt every 1ms
	can_init();							//initialise le CAN
	can_set_baud();						//obsol�te � priori � tester
	restart_wdt();

	#ifdef DEBUG
	   // Mise en �vidence d'un probl�me li� au Watchdog
   	   switch ( restart_cause() )
       {
          case WDT_TIMEOUT:
          {
             printf("\r\nRestarted processor because of watchdog timeout!\r\n");
             break;
          }
          case NORMAL_POWER_UP:
          {
             printf("\r\nNormal power up! PIC initialized \r\n");
             break;
          }
       }
       restart_wdt();
    #endif


	//  BOUCLE DE TRAVAIL
	while(TRUE)
	{
		restart_wdt();
		listenCAN();

		restart_wdt();
		internalLogic();

		restart_wdt();
		sendCAN();
	}
}

#inline
void listenCAN()        // Fonction assurant la r�ception des messages sur le CAN et la redirection de ces derniers
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;

	if(can_kbhit())                                // Une donn�e est pr�sente dans le buffer de r�ception du CAN
	{
		if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on r�cup�re le message
		{
			switch(rxId)                           // en fonction de l'id on le traite sp�cifiquement
			{
				case BRAKE_ORDER:
				{		
					brake=rxData[0];			   // On change l'�tat des feux stops
					break;
				}
				case BLINK_ORDER_LEFT:
				{		
					blinkl_ack=1;                  // On place le flag � 1 pour envoyer l'accus� de r�ception ult�rieurement
					blink_left=rxData[0];          // On change l'�tat duclign_msotant gauche
					break;
				}
				case BLINK_ORDER_RIGHT:
				{
                    blinkr_ack=1;                  // On place le flag � 1 pour envoyer l'accus� de r�ception ult�rieurement
					blink_right=rxData[0];         // On change l'�tat duclign_msotant droit
					break;
				}
				case LIGHT_ORDER:
				{
					light_ack=1;				   // On place le flag � 1 pour envoyer l'accus� de r�ception ult�rieurement
					if(rxData[0]==0)
					{
						light=0; 				   // On �teint les feux
	  				}           
					else
					{
						light=1;				   // On allume les feux
					}
					break;
				}
			}
		#ifdef TRACE
			restart_wdt();
			tmp=ms+1000*sec;
			if((rxId==BRAKE_ORDER || rxId==BLINK_ORDER_LEFT || rxId==BLINK_ORDER_RIGHT || rxId==LIGHT_ORDER) && rxLen>=1)
			{
				printf("\r\n [%Lu] - CAN RX - ID=%u - DATA=%u", tmp,rxId,rxData[0]);
			}
		#endif
		#ifdef TRACE_CAN
			tmp=ms+1000*sec;
			printf("\r\n [%Lu] - CAN_DEBUG - BUFF=%u - ID=%u - LEN=%u - OVF=%u", tmp,rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);
		#endif
		}
		else
		{
		#ifdef TRACE_CAN
			restart_wdt();
	        tmp=ms+1000*sec;
			printf("[%Lu] - CAN_DEBUG - FAIL on can_getd function", tmp);
		#endif
		}
	}
}

#inline
void internalLogic() //Fonction en charge de la gestion des fonctionnalit�s de la carte
{
	//gestion des feux stops et arri�res
	output_bit(FEUX_STOP, brake);                         // si brake est � true, allumer les feux stop, et inversement
	output_bit(FEUX, light);                              // si light est � true, allumer les feux arri�re, et inversement

	
	if(clign_ms >= 650)                                   // 650 ms = +- 1.5Hz apr�s l'activation du timer = frequence desclign_msotants
	{
		clign_ms = 0;                                     // repartir pour 500 ms
		blink_status = !blink_status ;                    // changer l'�tat d'allumage desclign_msotants

		output_bit(CLIGN_R, blink_status && blink_right); // allumer ou �teindre le clignotant droit s'il est activ�
		output_bit(CLIGN_L, blink_status && blink_left);  // allumer ou �teindre le clignotant gauche s'il est activ�
		#ifdef TRACE
			restart_wdt();
	        tmp=ms+1000*sec;
			printf("[%Lu] - INFO - Blink status has been toggled", tmp);	
		#endif
	}
}

#inline
void sendCAN()
{
	int r;
	if(blinkl_ack==1)
	{
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_LEFT_BACK_ACK,null,0,0,false,false); //emission de l'accus� de r�ception
			blinkl_ack=0; // on a plus besoin d'envoyer l'accus� de r�ception
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BLINK_LEFT_BACK_ACK,1,blink_left);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
	else if(blinkr_ack==1)
	{
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			r=can_putd(BLINK_RIGHT_BACK_ACK,null,0,0,false,false); //emission de l'accus� de r�ception
			blinkr_ack=0; // on a plus besoin d'envoyer l'accus� de r�ception
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, BLINK_RIGHT_BACK_ACK,1,blink_right);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
	else if(light_ack==1)
	{
		if(can_tbe()) // On v�rifie que le buffer d'emission est libre
		{
			r=can_putd(LIGHT_BACK_ACK,null,0,0,false,false); //emission de l'accus� de r�ception
			light_ack=0; // on a plus besoin d'envoyer l'accus� de r�ception
			#ifdef TRACE_CAN
				restart_wdt();
				tmp=1000*sec+ms;
				if (r != 0xFF)
				{
					printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u - DATA=%u",tmp, r, LIGHT_BACK_ACK,1,light);
				}
				else
					printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);
			#endif
		}
	}
}

