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
//      Version 1.03  - BLD - 12/02/2012 -> encapsulation debug                //  
//      Version 1.04  - BLD - 23/02/2012 -> gestion bargraphe de 20            //  
//		Version 1.05  - BLD - 23/02/2012 -> gestion de la couleur              //  
//		Version 1.06  - BLD - 20/03/2012 -> patch extended id                  // 
//	    												                       //
//			                                                                   //
/////////////////////////////////////////////////////////////////////////////////

#define CAN_USE_EXTENDED_ID         FALSE

#include <18F4580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>


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
#define	SELBAR1_LOW		PIN_B1
#define SELBAR1_HIGH	PIN_D3
#define SELBAR2_LOW		PIN_B4
#define SELBAR2_HIGH	PIN_D2
#define SELBAR12_TOP	PIN_C4
#define SELSEG1			PIN_E2
#define SELSEG2			PIN_B0
#define SELSEG3			PIN_C5
#define RED				PIN_C1
#define GREEN			PIN_C0
#define BUTTON1			PIN_C3
#define BUTTON2			PIN_C2

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
#use rs232(baud=19200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime
unsigned int16 rolling_ms=0;				   // variable contenant le temps depuis la dernière rotation d'affichage
unsigned int1 displaymode=0;                   // variable permettant de savoir si l'on affiche la vitesse ou l'écran de démonstration HYPNOZ
unsigned int16 speed=0;						   // variable contenant la vitesse courante en km/h.
unsigned int16 rpm=0;						   // variable contenant le régime moteur en rpm (compris entre 0 à 6000 tr/min
unsigned int16 charge=0;					   // variable contenant la charge des supercapacités en Volt
unsigned int8 bar1num=0;					   // variable contenant la valeur actuellement affichée sur le bargraphe1
unsigned int8 bar2num=0;					   // variable contenant la valeur actuellement affichée sur le bargraphe2
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
	displaymode=DISPLAYSPEED;			//par défaut on affiche la vitesse
	output_bit(GREEN,1);				//on éclaire le vert
	output_bit(RED,0);					//on éteint en rouge
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

	// choix de la couleur d'affichage
	if(speed<=50)	// Au dessous de 50kph on eclaire en vert
	{
		output_bit(GREEN,1);			
		output_bit(RED,0);					
	}
	else if(speed>50 && speed<=90) // Entre 50 et 90 on eclaire en jaune
	{
		output_bit(GREEN,1);			
		output_bit(RED,1);					
	}
	else // Au dessus de 90 on eclaire en rouge
	{
		output_bit(GREEN,0);				
		output_bit(RED,1);					
	}
}


#inline 
void displaynum2seg(int num,int seg)            //Fonction en charge de la gestion de l'affichage sur les 7 segments
{
	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in displaynum2seg",sec,ms)
	//on met les bits de sélection à 0 pour éviter d'écrire sur la voie actuellement sélectionnée.
	output_bit(SELBAR1_LOW,0);
	output_bit(SELBAR1_HIGH,0);
	output_bit(SELBAR2_LOW,0);
	output_bit(SELBAR2_HIGH,0);
	output_bit(SELBAR12_TOP,0);
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
void displaynum2bar(int num,int bar)
{
	int1 data[24];				//Contient l'état des verrous logique dans l'ordre croissant
	int1 topdatabar1[4];		//Contient l'état des bits de poids fort du dernier verrou
	int1 topdatabar2[4];		//Contient l'état des bits de poids faible du dernier verrou
	int i=0;

	LOG_DEBUG(TRACE_EXEC||TRACE_ALL,"Entering in displaynum2bar",sec,ms)
	//on met les bits de sélection à 0 pour éviter d'écrire sur la voie actuellement sélectionnée.
	output_bit(SELBAR1_LOW,0);
	output_bit(SELBAR1_HIGH,0);
	output_bit(SELBAR2_LOW,0);
	output_bit(SELBAR2_HIGH,0);
	output_bit(SELBAR12_TOP,0);
	output_bit(SELSEG1,0);
	output_bit(SELSEG2,0);
	output_bit(SELSEG3,0);

	//On initialise correctement les topdatabar[]
	for(i=0;i<4;i++)
	{
		topdatabar1[i]=0;
		topdatabar2[i]=0;
	}

	switch(bar1num)
	{
		case 17:
		{
			topdatabar1[0]=1;
			break;	
		}
		case 18:
		{
			topdatabar1[0]=1;
			topdatabar1[1]=1;
			break;	
		}
		case 19:
		{
			topdatabar1[0]=1;
			topdatabar1[1]=1;
			topdatabar1[2]=1;
			break;	
		}
		case 20:
		{
			topdatabar1[0]=1;
			topdatabar1[1]=1;
			topdatabar1[2]=1;
			topdatabar1[3]=1;
			break;	
		}
	}
	switch(bar2num)
	{
		case 17:
		{
			topdatabar2[0]=1;
			break;	
		}
		case 18:
		{
			topdatabar2[0]=1;
			topdatabar2[1]=1;
			break;	
		}
		case 19:
		{
			topdatabar2[0]=1;
			topdatabar2[1]=1;
			topdatabar2[2]=1;
			break;	
		}
		case 20:
		{
			topdatabar2[0]=1;
			topdatabar2[1]=1;
			topdatabar2[2]=1;
			topdatabar2[3]=1;
			break;	
		}
	}

	// On initialise le tableau date
	for(i=0;i<24;i++)
	{
		data[i]=0;
	}
	// On remplit le tableau data
	if(num<=20 && num>=0) // le numéro fourni en paramètre est affichable.
	{
		if(bar==BARAGRAPHE1)
		{
			for(i=1;i<=16;i++) // on initialise les deux données qui iront sur les verrous dédié
			{	
				if(i<=num)
				{
					data[i-1]=1;
				}
			}
			// On met à jour les bits de poids fort en prenant soin de laisser l'initialisation de topdatabar2
			switch(num)
			{
				case 17:
				{
					data[16]=1;
					break;	
				}
				case 18:
				{
					data[16]=1;
					data[17]=1;
					break;	
				}
				case 19:
				{
					data[16]=1;
					data[17]=1;
					data[18]=1;
					break;	
				}
				case 20:
				{
					data[16]=1;
					data[17]=1;
					data[18]=1;
					data[19]=1;
					break;	
				}
			}
			// on recopie la valeur présente sur l'autre bargraphe dans les bits de poids faible
			data[20]=topdatabar2[0];
			data[21]=topdatabar2[1];
			data[22]=topdatabar2[2];
			data[23]=topdatabar2[3];	
		}
		else if (bar==BARAGRAPHE2)
		{
			for(i=1;i<=16;i++) // on initialise les deux données qui iront sur les verrous dédié
			{	
				if(i<=num)
				{
					data[i-1]=1;
				}
			}
			// on recopie les bits de poids fort du baragraphe 1
			data[16]=topdatabar1[0];
			data[17]=topdatabar1[1];
			data[18]=topdatabar1[2];
			data[19]=topdatabar1[3];
			// On met à jour les bits de poids faible 
			switch(num)
			{
				case 17:
				{
					data[20]=1;
					break;	
				}
				case 18:
				{
					data[20]=1;
					data[21]=1;
					break;	
				}
				case 19:
				{
					data[20]=1;
					data[21]=1;
					data[22]=1;
					break;	
				}
				case 20:
				{
					data[20]=1;
					data[21]=1;
					data[22]=1;
					data[23]=1;
					break;	
				}
			}
		}
		else
		{
			LOG_ERROR(TRACE_ALL||TRACE_EXEC,"Wrong selection of the baragraphe in displaynum2bar",sec,ms);
		}
	}
	else // le numéro saisi n'est pas valide
	{
		LOG_ERROR(TRACE_ALL||TRACE_EXEC,"Data cannot be displayed because they are out of range",sec,ms);
		data[7]=1;
		data[8]=1;
		data[10]=1;
		data[11]=1;
	}

	// on affiche data sur le bon baragraphe

	if(bar==BARAGRAPHE1)
	{

		output_bit(DATA1,data[0]);
		output_bit(DATA2,data[1]);
		output_bit(DATA3,data[2]);
        output_bit(DATA4,data[3]);
        output_bit(DATA5,data[4]);
		output_bit(DATA6,data[5]);
		output_bit(DATA7,data[6]);
		output_bit(DATA8,data[7]);

		output_bit(SELBAR1_LOW,1);
		delay_us(25);							// on attend le temps de réponse du baragraphe
		output_bit(SELBAR1_LOW,0);
		delay_us(25);

		output_bit(DATA1,data[8]);
		output_bit(DATA2,data[9]);
		output_bit(DATA3,data[10]);
        output_bit(DATA4,data[11]);
        output_bit(DATA5,data[12]);
		output_bit(DATA6,data[13]);
		output_bit(DATA7,data[14]);
		output_bit(DATA8,data[15]);

		output_bit(SELBAR1_HIGH,1);
		delay_us(25);							// on attend le temps de réponse du baragraphe
		output_bit(SELBAR1_HIGH,0);
		delay_us(25);

		output_bit(DATA1,data[16]);
		output_bit(DATA2,data[17]);
		output_bit(DATA3,data[18]);
        output_bit(DATA4,data[19]);
        output_bit(DATA5,data[20]);
		output_bit(DATA6,data[21]);
		output_bit(DATA7,data[22]);
		output_bit(DATA8,data[23]);

		output_bit(SELBAR12_TOP,1);
		delay_us(25);							// on attend le temps de réponse du baragraphe
		output_bit(SELBAR12_TOP,0);
		delay_us(25);

		bar1num=num;							// on met à jour la valeur actuellement affichée
	}
	else if(bar==BARAGRAPHE2)
	{

		output_bit(DATA1,data[0]);
		output_bit(DATA2,data[1]);
		output_bit(DATA3,data[2]);
        output_bit(DATA4,data[3]);
        output_bit(DATA5,data[4]);
		output_bit(DATA6,data[5]);
		output_bit(DATA7,data[6]);
		output_bit(DATA8,data[7]);

		output_bit(SELBAR2_LOW,1);
		delay_us(25);							// on attend le temps de réponse du baragraphe
		output_bit(SELBAR2_LOW,0);
		delay_us(25);

		output_bit(DATA1,data[8]);
		output_bit(DATA2,data[9]);
		output_bit(DATA3,data[10]);
        output_bit(DATA4,data[11]);
        output_bit(DATA5,data[12]);
		output_bit(DATA6,data[13]);
		output_bit(DATA7,data[14]);
		output_bit(DATA8,data[15]);

		output_bit(SELBAR2_HIGH,1);
		delay_us(25);							// on attend le temps de réponse du baragraphe
		output_bit(SELBAR2_HIGH,0);
		delay_us(25);

		output_bit(DATA1,data[16]);
		output_bit(DATA2,data[17]);
		output_bit(DATA3,data[18]);
        output_bit(DATA4,data[19]);
        output_bit(DATA5,data[20]);
		output_bit(DATA6,data[21]);
		output_bit(DATA7,data[22]);
		output_bit(DATA8,data[23]);

		output_bit(SELBAR12_TOP,1);
		delay_us(25);							// on attend le temps de réponse du baragraphe
		output_bit(SELBAR12_TOP,0);
		delay_us(25);

		bar2num=num;							// On met à jour la valeur affichée
	}

}

// Fonction convertissant le régime moteur en le bon nombre de niveau de bargraphe correspondant
int convertrpm2bar(unsigned int16 regime)
{
	if(regime >=10 && regime<100)
	{
		return 0;
	}
	else if(regime >=100 && regime<300)
	{
		return 1;
	}
	else if (regime>=300 && regime<600)
	{
		return 2;
	}
	else if (regime>=600 && regime<900)
	{
		return 3;
	}
	else if (regime>=900 && regime<1200)
	{
		return 4;
	}
	else if (regime>=1200 && regime<1500)
	{
		return 5;
	}
	else if (regime>=1500 && regime<1800)
	{
		return 6;
	}
	else if (regime>=1800 && regime<2100)
	{
		return 7;
	}
	else if (regime>=2100 && regime<2400)
	{
		return 8;
	}
	else if (regime>=2400 && regime<2700)
	{
		return 9;
	}
	else if (regime>=2700 && regime<3000)
	{
		return 10;
	}
	else if (regime>=3000 && regime<3300)
	{
		return 11;
	}
	else if (regime>=3300 && regime<3600)
	{
		return 12;
	}
	else if (regime>=3600 && regime<3900)
	{
		return 13;
	}
	else if (regime>=3900 && regime<4200)
	{
		return 14;
	}
	else if (regime>=4200 && regime<4500)
	{
		return 15;
	}
	else if (regime>=4500 && regime<4800)
	{
		return 16;
	}
	else if (regime>=4800 && regime<5100)
	{
		return 17;
	}
	else if (regime>=5100 && regime<5400)
	{
		return 18;
	}
	else if (regime>=5400 && regime<5700)
	{
		return 19;
	}
	else if (regime>=5700 && regime<6500)
	{
		return 20;
	}
	else										// si le régime moteur dépasse les 6500 tours ont met le bargraphe en erreur afin de signaler le pb
	{
		LOG_WARN(TRACE_ALL||TRACE_EXEC||TRACE_RPM,"RPM rate is a bit too high",sec,ms)
		return 11;
	}
}



// Fonction convertissant le régime moteur en le bon nombre de niveau de bargraphe correspondant
int convertcharge2bar(unsigned int16 charge)
{
	if(charge>=2 &&charge<6)
	{
		return 0;
	}
	else if(charge <=6 &&  charge<12)
	{
		return 1;
	}
	else if (charge>=12 &&  charge<24)
	{
		return 2;
	}
	else if (charge>=24 &&  charge<36)
	{
		return 3;
	}
	else if (charge>=36 &&  charge<48)
	{
		return 4;
	}
	else if (charge>=48 &&  charge<60)
	{
		return 5;
	}
	else if (charge>=60&&  charge<72)
	{
		return 6;
	}
	else if (charge>=72 &&  charge<84)
	{
		return 7;
	}
	else if (charge>=84 &&  charge<96)
	{
		return 8;
	}
	else if (charge>=96 &&  charge<108)
	{
		return 9;
	}
	else if (charge>=108 &&  charge<120)
	{
		return 10;
	}
	else if (charge>=120 &&  charge<132)
	{
		return 11;
	}
	else if (charge>=132 &&  charge<144)
	{
		return 12;
	}
	else if (charge>=144 &&  charge<156)
	{
		return 13;
	}
	else if (charge>=156 &&  charge<168)
	{
		return 14;
	}
	else if (charge>=168 &&  charge<180)
	{
		return 15;
	}
	else if (charge>=180 &&  charge<192)
	{
		return 16;
	}
	else if (charge>=192 &&  charge<204)
	{
		return 17;
	}
	else if (charge>=204 &&  charge<216)
	{
		return 18;
	}
	else if (charge>=216 &&  charge<228)
	{
		return 19;
	}
	else if (charge>=228 && charge<260)
	{
		return 20;
	}
	else										// si le régime moteur dépasse les 260 Volts  ont met le bargraphe en erreur afin de signaler le pb
	{
		LOG_WARN(TRACE_ALL||TRACE_EXEC||TRACE_SC,"Supercapacity are overcharged",sec,ms)
		return 11;
	}
}