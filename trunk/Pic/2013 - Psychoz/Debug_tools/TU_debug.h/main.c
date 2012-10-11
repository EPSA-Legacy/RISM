/////////////////////////////////////////////////////////////////
//															   //
//					Ecurie Piston Sport Auto                   //
//                                                             //
//                       Hypnoz 2012                           //
//                                                             //
//		Debug des macros préprocesseur de debug.h              //
//		Version 0.00 - BLD - 09/02/2012 -> début du code       //
//                                                             //
//      													   //
/////////////////////////////////////////////////////////////////

#include <18F4580.h>
#include <can-18xxx8.c>
#include <CAN_id.h>
#include <debug.h>

//#define CAN_USE_EXTENDED_ID         FALSE





#ifdef DEBUG
	#fuses HS,NOPROTECT,NOLVP,NOWDT
#else
	#fuses HS,NOPROTECT,NOLVP,WDT
#endif

#use delay(clock=20000000)
#use rs232(baud=115200,xmit=PIN_C6,rcv=PIN_C7)

// Variables globales

unsigned int16 ms=0;                           // les ms du uptime compté à l'aide de tmr2
unsigned int16 sec=0;                          // contient les secondes du uptime

int current_log_lv=5;
int16 tmp=0;						           // variable temporaire

// Prototypes de fonctions
#inline
void internalLogic();

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
	setup_adc(NO_ANALOGS);					  //configuration des I/O analogique 
	enable_interrupts(INT_TIMER2);            //configuration des interruptions
	enable_interrupts(GLOBAL); 
	

	setup_timer_2(T2_DIV_BY_4,250,5);         //setup up timer2 to interrupt every 1ms
	can_init();						          //initialise le CAN
	can_set_baud();					          //obsolète à priori à tester
	restart_wdt();


	//  BOUCLE DE TRAVAIL
	while(TRUE)
	{
		restart_wdt();
		internalLogic();
	}
}

#inline
void internalLogic() //Fonction de la boucle de travail
{
	int toto=32;
	int8 tata=-4;
	unsigned int8 titi=158;
	int32  grosminet=-895412;
	unsigned int32 hector=8451321;

	// Ce test permet de vérifier que le #define LOGLEVEL RUN est fonctionnel et définit bien une valeur pour le léxème LOGLEVEL
	#if CURRENT_LOG_LEVEL==DEBUG
		printf("Définition du CURRENT_LOG_LEVEL à DEBUG");
	#endif

	#if CURRENT_LOG_LEVEL==DEVELOPMENT
		printf("Définition du CURRENT_LOG_LEVEL à DEVELOPMENT");
	#endif

	#if CURRENT_LOG_LEVEL==TESTING
		printf("Définition du CURRENT_LOG_LEVEL à TESTING");
	#endif

	#if CURRENT_LOG_LEVEL==WARN
		printf("Définition du CURRENT_LOG_LEVEL à WARN");
	#endif

	#if CURRENT_LOG_LEVEL==ERROR
		printf("Définition du CURRENT_LOG_LEVEL à ERROR");
	#endif

	#if CURRENT_LOG_LEVEL==RUN
		printf("Définition du CURRENT_LOG_LEVEL à RUN");
	#endif

	LOG_DEBUG(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEBUG appel LOG \r\n",sec,ms)
	LOG_DEVELOPMENT(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEVELOPMENT appel LOG \r\n",sec,ms)
	LOG_TESTING(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type TESTING appel LOG \r\n",sec,ms)
	LOG_WARN(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type WARN appel LOG \r\n",sec,ms)		
	LOG_ERROR(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type ERROR appel LOG \r\n",sec,ms)

	LOG_DEBUG_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEBUG appel LOG_D \r\n",toto,sec,ms)
	LOG_DEVELOPMENT_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEVELOPMENT appel LOG_D \r\n",toto,sec,ms)
	LOG_TESTING_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type TESTING appel LOG_D  \r\n",toto,sec,ms)
	LOG_WARN_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type WARN appel LOG_D  \r\n",toto,sec,ms)		
	LOG_ERROR_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type ERROR appel LOG_D  \r\n",toto,sec,ms)

	LOG_DEBUG_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEBUG appel LOG_D int8 \r\n",tata,sec,ms)
	LOG_DEVELOPMENT_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEVELOPMENT appel LOG_D int8 \r\n",tata,sec,ms)
	LOG_TESTING_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type TESTING appel LOG_D int8 \r\n",tata,sec,ms)
	LOG_WARN_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type WARN appel LOG_D int8 \r\n",tata,sec,ms)		
	LOG_ERROR_D(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type ERROR appel LOG_D int8 \r\n",tata,sec,ms)

	LOG_DEBUG_UD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEBUG appel LOG_UD \r\n",titi,sec,ms)
	LOG_DEVELOPMENT_UD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEVELOPMENT appel LOG_UD \r\n",titi,sec,ms)
	LOG_TESTING_UD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type TESTING appel LOG_UD \r\n",titi,sec,ms)
	LOG_WARN_UD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type WARN appel LOG_UD \r\n",titi,sec,ms)		
	LOG_ERROR_UD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type ERROR appel LOG_UD \r\n",titi,sec,ms)

	LOG_DEBUG_LD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEBUG appel LOG_LD \r\n",grosminet,sec,ms)
	LOG_DEVELOPMENT_LD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEVELOPMENT appel LOG_LD \r\n",grosminet,sec,ms)
	LOG_TESTING_LD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type TESTING appel LOG_LD \r\n",grosminet,sec,ms)
	LOG_WARN_LD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type WARN appel LOG_LD \r\n",grosminet,sec,ms)		
	LOG_ERROR_LD(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type ERROR appel LOG_LD \r\n",grosminet,sec,ms)

	LOG_DEBUG_LU(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEBUG appel LOG_LU\r\n",hector,sec,ms)
	LOG_DEVELOPMENT_LU(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type DEVELOPMENT appel LOG_LU\r\n",hector,sec,ms)
	LOG_TESTING_LU(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type TESTING appel LOG_LU\r\n",hector,sec,ms)
	LOG_WARN_LU(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type WARN appel LOG_LU\r\n",hector,sec,ms)		
	LOG_ERROR_LU(TRACE_ALL_CMD || TRACE_RPM,"Niveau de type ERROR appel LOG_LU\r\n",hector,sec,ms)

	// Cette série de tests permet de vérifier le bon fonctionnement de la méthode LOG
	// Pour cela on utilisera toujours le même fichier debug.h avec TRACE_ALL=0 TRACE_ALL_CMD=1 TRACE_RPM=1 et tous le reste à 0
	// On se place en LOGLEVEL=WARN,et on regle ensuite le current level à l'aide du define LOGLEVEL du présent fichier

//	LOG(TESTING,current_log_lv,1,"Ce message doit s'afficher",sec,ms)
/*
#define LOG(loglevel,currentlevel,trace_cond,message,sec,ms) { 						\
		#if	((currentlevel>=loglevel)&&((trace_cond==1)||(current_level==DEBUG)))	\
			printf("[%Lu] - %s",sec*1000+ms,message);								\
		#endif			(TRACE_ALL||TRACE_ALL||CMD)															\
		}	
*/															 
}
