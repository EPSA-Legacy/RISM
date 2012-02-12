/////////////////////////////////////////////////////////////////////////////////
//															                   //
//					Ecurie Piston Sport Auto                                   //
//                                                                             //
//                       Hypnoz 2012                                           //
//                                                                             //
//		Carte Affichage Tableau de bord                                        //
//		Version 1.00  - BLD - 29/11/2011                                       //
//		Version 1.01  - BLD - 18/12/2011 -> recalibrage timer                  //
//		Version 1.02  - BLD - 07/02/2012 -> affichage RPM+charge sur bargraphe //
//      	Version 1.03  - BLD - 12/02/2012 -> encapsulation debug                   //    
//	    												                       //
//			                                                                   //
/////////////////////////////////////////////////////////////////////////////////

#include <18F4580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>

//#define CAN_USE_EXTENDED_ID         FALSE

// Assignation des sorties analogiques
#define SEGA            PIN_A0
#define SEGB	        PIN_A1
#define SEGC	        PIN_A2
#define SEGD	        PIN_A3
#define SEGE			PIN_A4
#define SEGF			PIN_A5
#define SEGG			PIN_E0
#define DATA1			PIN_A0
#define DATA2			PIN_A1
#define DATA3			PIN_A2
#define DATA4			PIN_A3
#define DATA5			PIN_A4
#define DATA6			PIN_A5
#define DATA7			PIN_E0
#define DATA8			PIN_E1
#define DATA9BAR1		PIN_E2
#define DATA10BAR1		PIN_C0
#define DATA9BAR2		PIN_C2
#define DATA10BAR2		PIN_C3
#define	SELBAR1			PIN_D4
#define SELBAR2			PIN_C4
#define SELSEG1			PIN_C1
#define SELSEG2			PIN_D7
#define SELSEG3			PIN_C1
#define RED				PIN_E1
#define GREEN			PIN_E2
#define BUTTON1			PIN_B4
#define BUTTON2			PIN_B1

// Constantes diverses
#define DISPLAYSPEED	   1
#define DISPLAYSHOW  	   0
#define ROLLINGTIME		1500
#define MESSAGELENGTH	   8
#define SEGMENT1		   1
#define SEGMENT2		   2
#define SEGMENT3		   3
#define BARAGRAPHE1		   4
#define BARAGRAPHE2        5

// Constantes d'affichage pour le 7segments
#define LETTERH			 100
#define LETTERY			 101
#define LETTERP			 102
#define LETTERN			 103
#define LETTERO			   0					// Pour afficher un O on se sert du code pour inscrire un zéro
#define LETTERZ			 104
#define LETTERE			 105
#define LETTERR		     106
#define DASH			 107
#define NOTHING			 108

#fuses HS,NOPROTECT,NOLVP,WDT

#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime
unsigned int16 rolling_ms=0;				   // variable contenant le temps depuis la dernière rotation d'affichage
unsigned int1 displaymode=0;                   // variable permettant de savoir si l'on affiche la vitesse ou l'écran de démonstration HYPNOZ
unsigned int16 speed=0;						   // variable contenant la vitesse courante en km/h.
unsigned int16 rpm=0;						   // variable contenant le régime moteur en rpm (compris entre 0 à 6000 tr/min
unsigned int16 charge=0;					   // variable contenant la charge des supercapacités en Volt
int8 index=0;								   // variable contenant la position courante pour l'affichage déroulant
int8 indexbar=0;							   // variable contenant le niveau courant des bargraphes dans le mode présentation
int16 tmp=0;						           // variable temporaire



// Prototypes de fonctions
#inline
void listenCAN();

#inline
void internalLogic();

#inline 
void displaynum2seg(int,int);

#inline
void displaynum2bar(int,int);

#inline
int convertrpm2bar(unsigned int16);

#inline
int convertcharge2bar(unsigned int16);


// Méthode d'interruption du timer 2
#int_timer2
void isr_timer2()
{
	 ms++;
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
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in main fonction",sec,ms)
	setup_adc_ports(NO_ANALOGS);        //on gère toutes les entrées comme étant de type numérique

	enable_interrupts(INT_TIMER2);      //configuration des interruptions
	enable_interrupts(GLOBAL);

	setup_timer_2(T2_DIV_BY_4,250,5);   //setup up timer2 to interrupt every 1ms
	can_init();							//initialise le CAN
	can_set_baud();						//obsolète à priori à tester
	displaymode=DISPLAYSPEED;			//par défaut on affiche la vitesse
	output_bit(GREEN,0);				//on éteint le vert
	output_bit(RED,1);					//on éclaire en rouge
	restart_wdt();

	CHECK_PWUP								  //on vérifie que le démarrage est du à une mise sous tension et non un watchdog

	//  BOUCLE DE TRAVAIL
	while(TRUE)
	{
		LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in working loop",sec,ms)
		restart_wdt();
		listenCAN();

		restart_wdt();
		internalLogic();
	}
}

#inline
void listenCAN()        // Fonction assurant la réception des messages sur le CAN et la redirection de ces derniers
{
	struct rx_stat rxStat;
	int32 rxId;
	int8 rxData[8];
	int8 rxLen;
	int r=0;			// flag assurant la bonne lecture de la donnée sur le CAN

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in ListenCAN",sec,ms)

	if(can_kbhit())                                // Une donnée est présente dans le buffer de réception du CAN
	{
		LOG_DEBUG(TRACE_CAN,"Something hit the CAN bus",sec,ms)
		if(can_getd(rxId,&rxData[0],rxLen,rxStat)) // on récupère le message
		{
			LOG_DEVELOPMENT_LD(TRACE_CAN||TRACE_ALL,"CAN RX - ID ",rxId,sec,ms)
			r=1;								   // On a effectivement lu quelque chose sur le CAN
			switch(rxId)                           // en fonction de l'id on le traite spécifiquement
			{
				case SPEED_DATA:
				{		
					speed=rxData[0];			   // On change met à jour la vitesse du véhicule
					LOG_TESTING(TRACE_ALL||TRACE_SPEED,"Speed data is  incomming from the CAN",sec,ms)
					break;
				}
				case ENGINE_RPM:
				{
					rpm=rxData[0];
					LOG_TESTING(TRACE_ALL||TRACE_RPM,"Engine_RPM is  incomming from the CAN",sec,ms)
					break;
				}
				case VOLTAGE_DATA:
				{
					rpm=rxData[4];
					LOG_TESTING(TRACE_ALL||TRACE_SC,"Supercapacity voltage is  incomming from the CAN",sec,ms)
					break;
				}
			}
		}
		LOG_LISTEN_CAN(r,rxStat,rxId,rxLen,sec,ms)
	}
}

#inline
void internalLogic() //Fonction en charge de la gestion des fonctionnalités de la carte
{
	int8 unite=0;		                          // contient le chiffre des unités de la vitesse
	int8 dizaine=0;	                              // contient le chiffre des dizaines de la vitesse
	int8 centaine=0;	                          // contient le chiffre des centaines de la vitesse
	int8 message[MESSAGELENGTH];                  // contient l'odre d'affichage des lettres
	int nblevel=0;								  // contient le nombre de niveau du bargraphe à afficher
	int8 i=0;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in internalLogic",sec,ms)

	if(displaymode==DISPLAYSPEED)                 // Si l'on souhaite afficher la vitesse
	{
		LOG_TESTING(TRACE_ALL||TRACE_DSPMODE,"Speed is currently displayed",sec,ms)
		LOG_TESTING_LD(TRACE_ALL||TRACE_SPEED,"Speed is ",speed,sec,ms)
		centaine=speed%100;
		dizaine=(speed-100*centaine)%10;
		unite=(speed-100*centaine-10*dizaine);
		if(centaine==0)
		{
			centaine=NOTHING; 					 // Si vitesse <=99kmh on eteint le digit correspondant
		}
		if(dizaine==0)
		{
			dizaine=NOTHING;					 // Si vitesse <=9kmh on eteint le digit correspondant
		}
		displaynum2seg(unite,SEGMENT1);
		displaynum2seg(dizaine,SEGMENT2);
		displaynum2seg(centaine,SEGMENT3);

		// Gestion de l'affichage du régime moteur
		LOG_TESTING_LU(TRACE_ALL||TRACE_RPM,"RPM is ",rpm,sec,ms)
		nblevel=convertrpm2bar(rpm);
		displaynum2bar(nblevel,BARAGRAPHE1);

		// Gestion de la charge des supercapacités
		LOG_TESTING_LD(TRACE_ALL||TRACE_RPM,"Supercapacity charge is ",charge,sec,ms)
		nblevel=convertcharge2bar(charge);
		displaynum2bar(nblevel,BARAGRAPHE2);
	}
	else if(displaymode==DISPLAYSHOW)			 // Si l'on souhaite afficher le nom du véhicule
	{
		LOG_TESTING(TRACE_ALL||TRACE_DSPMODE,"Demonstration mode is enabled",sec,ms)
		// Gestion des variables de défilement de l'afficheur
		if(rolling_ms>=ROLLINGTIME) 			 // Si l'affichage a été assez long on se décale d'un cran.
		{
			LOG_DEVELOPMENT(TRACE_ALL||TRACE_EXEC,"Screen has just scrolled",sec,ms)
			rolling_ms=0; 						 // on remet le compteur temporel à zero
			index++; 							 // on affiche l'élément suivant
			indexbar++;							 // on incrément de 1 le niveau des baragraphes
			if(index>=MESSAGELENGTH)
			{
				LOG_DEVELOPMENT(TRACE_ALL||TRACE_EXEC,"Scrolling matrix is over, reentering in a new cycle",sec,ms)
				index=0;						 // on repart du début en cas de dépassement de la taille du tableau (ie affichage complet)		
			}
			if(indexbar>10)
			{
				indexbar=0;
			}
		}
		// On construit le tableau du message
		message[0]=DASH;
		message[1]=LETTERH;
		message[2]=LETTERY;
		message[3]=LETTERP;
		message[4]=LETTERN;
		message[5]=LETTERO;
		message[6]=LETTERZ;
		message[7]=DASH;

		displaynum2seg(message[index],SEGMENT3);
		if((index+1)>=MESSAGELENGTH) 			// on sort du tableau il faut donc reprendre au début
		{
			i=index+1-MESSAGELENGTH;
		}
		else
		{
			i=index+1;
		}
		displaynum2seg(message[i],SEGMENT2);   // on affiche la bonne lettre sur le deuxième 7 segments
		if((index+2)>=MESSAGELENGTH) 		   // on sort du tableau il faut donc reprendre au début
		{
			i=index+2-MESSAGELENGTH;
		}
		else
		{
			i=index+2;
		}
		displaynum2seg(message[i],SEGMENT1);   // on affiche la bonne lettre sur le troisième 7 segments

		//gestion des baragraphes
		displaynum2bar(indexbar,BARAGRAPHE1);
		displaynum2bar(indexbar,BARAGRAPHE2);
	}
}


#inline 
void displaynum2seg(int num,int seg)            //Fonction en charge de la gestion de l'affichage sur les 7 segments
{
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in displaynum2seg",sec,ms)
	//on met les bits de sélection à 0 pour éviter d'écrire sur la voie actuellement sélectionnée.
	output_bit(SELBAR1,0);
	output_bit(SELBAR2,0);
	output_bit(SELSEG1,0);
	output_bit(SELSEG2,0);
	output_bit(SELSEG3,0);

	switch(num)
	{
		case 0:							// On commute les sorties pour afficher un 0 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,1);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,0);
			break;
		}
		case 1:						   // On commute les sorties pour afficher un 1 sur le 7 segments
		{
			output_bit(SEGA,0);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,0);
			output_bit(SEGF,0);
			output_bit(SEGG,0);
			break;
		}
		case 2:						   // On commute les sorties pour afficher un 2 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,0);
			output_bit(SEGD,1);
			output_bit(SEGE,1);
			output_bit(SEGF,0);
			output_bit(SEGG,1);
			break;
		}
		case 3:						   // On commute les sorties pour afficher un 3 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,1);
			output_bit(SEGE,0);
			output_bit(SEGF,0);
			output_bit(SEGG,1);
			break;
		}
		case 4:						   // On commute les sorties pour afficher un 4 sur le 7 segments
		{
			output_bit(SEGA,0);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,0);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case 5:						   // On commute les sorties pour afficher un 5 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,0);
			output_bit(SEGC,1);
			output_bit(SEGD,1);
			output_bit(SEGE,0);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case 6:						   // On commute les sorties pour afficher un 6 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,0);
			output_bit(SEGC,1);
			output_bit(SEGD,1);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case 7:						   // On commute les sorties pour afficher un 7 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,0);
			output_bit(SEGF,0);
			output_bit(SEGG,0);
			break;
		}
		case 8:						   // On commute les sorties pour afficher un 8 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,1);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case 9:						   // On commute les sorties pour afficher un 9 sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,1);
			output_bit(SEGE,0);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case LETTERH:			      // On commute les sorties pour afficher un H sur le 7 segments
		{
			output_bit(SEGA,0);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case LETTERY:			      // On commute les sorties pour afficher un Y sur le 7 segments
		{
			output_bit(SEGA,0);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,0);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case LETTERP:			      // On commute les sorties pour afficher un P sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,0);
			output_bit(SEGD,0);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case LETTERN:			      // On commute les sorties pour afficher un N sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,0);
			break;
		}
		case LETTERZ:			      // On commute les sorties pour afficher un Z sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,1);
			output_bit(SEGC,0);
			output_bit(SEGD,1);
			output_bit(SEGE,1);
			output_bit(SEGF,0);
			output_bit(SEGG,1);
			break;
		}
		case LETTERE:			      // On commute les sorties pour afficher un E sur le 7 segments
		{
			output_bit(SEGA,1);
			output_bit(SEGB,0);
			output_bit(SEGC,0);
			output_bit(SEGD,1);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case LETTERR:			      // On commute les sorties pour afficher un R sur le 7 segments
		{
			output_bit(SEGA,0);
			output_bit(SEGB,0);
			output_bit(SEGC,0);
			output_bit(SEGD,0);
			output_bit(SEGE,1);
			output_bit(SEGF,0);
			output_bit(SEGG,1);
			break;
		}
		case DASH:			         // On commute les sorties pour afficher un - sur le 7 segments
		{
			output_bit(SEGA,0);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
		case NOTHING:			    // On commute les sorties pour eteindre le 7 segments
		{
			output_bit(SEGA,0);
			output_bit(SEGB,1);
			output_bit(SEGC,1);
			output_bit(SEGD,0);
			output_bit(SEGE,1);
			output_bit(SEGF,1);
			output_bit(SEGG,1);
			break;
		}
	}

	//On sélectionne le bon afficheur
	if(seg==SEGMENT1)
	{
		output_bit(SELSEG1,1);
	}
	else if(seg==SEGMENT2)
	{
		output_bit(SELSEG2,1);
	}
	else if(seg==SEGMENT3)
	{
		output_bit(SELSEG3,1);
	}
}

#inline
void displaynum2bar(int num,int bar) //Fonction en charge de l'affichage sur les baragraphes. 
									 //Num doit âtre compris entre 0 et 10. Bar permet de sélectionner le baragraphe
{
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in displaynum2bar",sec,ms)
	//on met les bits de sélection à 0 pour éviter d'écrire sur la voie actuellement sélectionnée.
	output_bit(SELBAR1,0);
	output_bit(SELBAR2,0);
	output_bit(SELSEG1,0);
	output_bit(SELSEG2,0);
	output_bit(SELSEG3,0);

	if(num<=10 && num>= 0) // La donnée à afficher est valide
	{
		if(bar==BARAGRAPHE1)
		{
			switch(num)
			{
				case 0:
				{
					output_bit(DATA1,0);
					output_bit(DATA2,0);
					output_bit(DATA3,0);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 1:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,0);
					output_bit(DATA3,0);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 2:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,0);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 3:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 4:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 5:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 6:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 7:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,0);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 8:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,1);
					output_bit(DATA9BAR1,0);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 9:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,1);
					output_bit(DATA9BAR1,1);
					output_bit(DATA10BAR1,0);
					break;
				}
				case 10:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,1);
					output_bit(DATA9BAR1,1);
					output_bit(DATA10BAR1,1);
					break;
				}
			}
		}
		if(bar==BARAGRAPHE2)
		{
			switch(num)
			{
				case 0:
				{
					output_bit(DATA1,0);
					output_bit(DATA2,0);
					output_bit(DATA3,0);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 1:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,0);
					output_bit(DATA3,0);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 2:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,0);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 3:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,0);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 4:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,0);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 5:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,0);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 6:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,0);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 7:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,0);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 8:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,1);
					output_bit(DATA9BAR2,0);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 9:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,1);
					output_bit(DATA9BAR2,1);
					output_bit(DATA10BAR2,0);
					break;
				}
				case 10:
				{
					output_bit(DATA1,1);
					output_bit(DATA2,1);
					output_bit(DATA3,1);
                	output_bit(DATA4,1);
         	    	output_bit(DATA5,1);
					output_bit(DATA6,1);
					output_bit(DATA7,1);
					output_bit(DATA8,1);
					output_bit(DATA9BAR2,1);
					output_bit(DATA10BAR2,1);
					break;
				}
			}
		}
	}
	else				   // On allume que le premier et le dernier segment pour signaler l'erreur
	{
		if(bar==BARAGRAPHE1)
		{
			LOG_ERROR(TRACE_ALL||TRACE_EXEC,"Baragraphe 1 is out of range",sec,ms)
			output_bit(DATA1,1);
			output_bit(DATA2,0);
			output_bit(DATA3,0);
            output_bit(DATA4,0);
            output_bit(DATA5,0);
			output_bit(DATA6,0);
			output_bit(DATA7,0);
			output_bit(DATA8,0);
			output_bit(DATA9BAR1,0);
			output_bit(DATA10BAR1,1);
		}
		else if(bar==BARAGRAPHE2)
		{
			LOG_ERROR(TRACE_ALL||TRACE_EXEC,"Baragraphe 2 is out of range",sec,ms)
			output_bit(DATA1,1);
			output_bit(DATA2,0);
			output_bit(DATA3,0);
            output_bit(DATA4,0);
            output_bit(DATA5,0);
			output_bit(DATA6,0);
			output_bit(DATA7,0);
			output_bit(DATA8,0);
			output_bit(DATA9BAR2,0);
			output_bit(DATA10BAR2,1);
		}	
		else  // Au cas d'une erreur dans la sélection on met tous les bits de données à 0
		{
			LOG_ERROR(TRACE_ALL||TRACE_EXEC,"Wrong selection bit for baragraphe",sec,ms)
			output_bit(DATA1,0);
			output_bit(DATA2,0);
			output_bit(DATA3,0);
            output_bit(DATA4,0);
            output_bit(DATA5,0);
			output_bit(DATA6,0);
			output_bit(DATA7,0);
			output_bit(DATA8,0);
			output_bit(DATA9BAR1,0);
			output_bit(DATA10BAR1,0);
		}
	}

	// On gère les bits de sélection afin d'afficher le résultat sur le bon bargraphe
	if(bar==BARAGRAPHE1)
	{
		output_bit(SELBAR1,1);
	}
	else if(bar==BARAGRAPHE2)
	{
		output_bit(SELBAR2,1);
	}
}


// Fonction convertissant le régime moteur en le bon nombre de niveau de bargraphe correspondant
int convertrpm2bar(unsigned int16 regime)
{
	if(regime<100)
	{
		return 0;
	}
	else if(regime >=100 && regime<600)
	{
		return 1;
	}
	else if (regime>=600 && regime<1200)
	{
		return 2;
	}
	else if (regime>=1200 && regime<1800)
	{
		return 3;
	}
	else if (regime>=1800 && regime<2400)
	{
		return 4;
	}
	else if (regime>=2400 && regime<3000)
	{
		return 5;
	}
	else if (regime>=3000 && regime<3600)
	{
		return 6;
	}
	else if (regime>=3600 && regime<4200)
	{
		return 7;
	}
	else if (regime>=4200 && regime<4800)
	{
		return 8;
	}
	else if (regime>=4800 && regime<5400)
	{
		return 9;
	}
	else if (regime>=5400 && regime<8000)
	{
		return 10;
	}
	else										// si le régime moteur dépasse les 8000 tours ont met le bargraphe en erreur afin de signaler le pb
	{
		LOG_WARN(TRACE_ALL||TRACE_EXEC||TRACE_RPM,"RPM rate is a bit too high",sec,ms)
		return 11;
	}
}



// Fonction convertissant le régime moteur en le bon nombre de niveau de bargraphe correspondant
int convertcharge2bar(unsigned int16 charge)
{
	if(charge<2)
	{
		return 0;
	}
	else if(charge >=2 &&  charge<25)
	{
		return 1;
	}
	else if (charge>=25 &&  charge<50)
	{
		return 2;
	}
	else if (charge>=50 &&  charge<75)
	{
		return 3;
	}
	else if (charge>=75 &&  charge<100)
	{
		return 4;
	}
	else if (charge>=100 &&  charge<125)
	{
		return 5;
	}
	else if (charge>=125&&  charge<150)
	{
		return 6;
	}
	else if (charge>=150 &&  charge<175)
	{
		return 7;
	}
	else if (charge>=175 &&  charge<200)
	{
		return 8;
	}
	else if (charge>=200&&  charge<225)
	{
		return 9;
	}
	else if (charge>=225 &&  charge<275)
	{
		return 10;
	}
	else										// si le régime moteur dépasse les 275 Volts  ont met le bargraphe en erreur afin de signaler le pb
	{
		LOG_WARN(TRACE_ALL||TRACE_EXEC||TRACE_SC,"Supercapacity are overcharged",sec,ms)
		return 11;
	}
}