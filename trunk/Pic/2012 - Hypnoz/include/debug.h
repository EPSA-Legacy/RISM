//////////////////////////////////////////////////////////////////////////////////////
//                                                                                  //
//				            Ecurie Piston Sport Auto                                //
//                                  E.P.S.A.                                        //
//                                                                                  //
//		Fichier : debug.h                                                           //
//																					//
//		Objectif : 																	//
//																					//
//			Ce fichier a pour but l'encapsulation et la centralisation de toutes	//
//			les fonctionnalités de debug et de loging des messages d'erreur et 		//
//			traces d'exécution des programmes présents sur les cartes génériques	//
//																					//
//		Developpeur : BLD															//
//																					//
//		Historique :																//
//																					//
//			31/01/12 : Définition des niveaux de logs								//
//			01/02/12 : Définition des constantes du type TRACE						//
//																					//
//////////////////////////////////////////////////////////////////////////////////////


// Définition des différents logs level
// Pour un niveau de log défini tous les messages provenant de niveaux de log inférieur
// sont traités et afficher

#ifndef DEBUG
	#define DEBUG 5					// Tous les messages sont affichés et traités		
#endif

#ifndef DEVELOPMENT
	#define DEVELOPMENT 4			// Tous les messages à utiles au développement sont affichés
#endif

#ifndef TESTING
	#define TESTING 3				// Seuls les données utiles aux tests sont affichées
#endif

#ifndef WARN
	#define WARN 2					// Seules les alertes potentiellement dangeureuses type dépassement de valeurs sont affichées
#endif

#ifndef ERROR
	#define	ERROR 1					// Seules les erreurs sont affichées
#endif

#ifndef RUN
	#define RUN 0					// Aucun message n'est affiché (mode réservé pour la course)
#endif

//////////////////////////////////////////
// Définition du niveau de log courant  //
//////////////////////////////////////////

#define CURRENT_LOG_LEVEL DEBUG

//////////////////////////////////////////////////////////
// Définition des constantes des paramètres de trace	//
//////////////////////////////////////////////////////////

// Fonction de tracing génériques
#define TRACE_ALL			1		// Condition globale permettant de passer tout les tests d'affichage à true exception faite de ceux du CAN
#define TRACE_ALL_LIGHT		0		// Permet de suivre l'état de tous les feux avant et arrières
#define TRACE_ALL_LIGHT_R	0		// Permet de suivre l'état de tous les feux arrières
#define TRACE_ALL_LIGHT_F	0		// Permet de suivre l'état de tous les feux avant
#define TRACE_ALL_CMD		1		// Permer de suivre l'état de toutes les commandes du tableau de bord
#define TRACE_PEDAL			0		// Permet de suivre l'intégralité des information issues de la carte pédalier.
#define TRACE_CAN			1		// Permet d'afficher les données du CAN
#define TRACE_EXEC			0		// Permet d'afficher les traces d'exécution
// Carte Acquisition
#define TRACE_TENSION		0		// Permet d'afficher les tensions mesurées par la carte acquisition
#define TRACE_COURANT		0		// Permet d'afficher les courants mesurés par la carte acquisition
#define TRACE_MOT			0		// Permet d'afficher la tension aux bornes des moteurs électriques mesurée par la carte acquisition
#define TRACE_SC			0		// Permet d'afficher la tension aux bornes des supercapacités mesurée par la carte acquisition
#define TRACE_CONV			0		// Permet d'afficher les données relatives au convertisseur provenant de la carte acquisition
// Carte alimentation
#define TRACE_CHARGE		0		// Permet d'afficher la mesure de la tension de la batterie à l'aide de la carte alimentation
// Carte Affichage tableau de bord
#define TRACE_DSPMODE		0		// Permet d'afficher le mode d'affichage en cours d'utilisation
// Carte feux arrières
#define TRACE_LIGHT_BACK	0  		// Permet de suivre l'état des feux et des codes à l'arrière
#define TRACE_BRAKE_LIGHT	0		// Permet de suivre l'état des feux stops
#define TRACE_BLINK_BACK	0		// Permet de suivre l'état des clignotants
#define TRACE_BLINK_RB		0		// Permet de suivre l'état des clignotants arrières droits
#define TRACE_BLINK_LB		0		// Permet de suivre l'état des clignotants arrières gauches
// Carte Moteur
#define TRACE_RPM			0		// Permet de suivre le régime moteur mesuré par la carte moteur
// Carte Tableau de Bord
#define TRACE_CMD_BLINK		0		// Permet de suivre les commandes des clignotants
#define TRACE_CMD_BLINK_L	0		// Permet de suivre les commandes des clignotants gauches
#define TRACE_CMD_BLINK_R	0		// Permet de suivre les commandes des clignotants droits
#define TRACE_CMD_WARNING	0		// Permet de suivre la commande des warning
#define TRACE_CMD_LIGHT		0		// Permet de suivre la commande des codes et des feux
#define TRACE_CMD_CODE		0		// Permet de suivre la commande des codes
#define TRACE_CMD_FEUX		0		// Permet de suivre la commande des feux
// Carte vitesse feux avant
#define TRACE_LIGHT_FRONT	0  		// Permet de suivre l'état des feux et des codes à l'avant
#define TRACE_BLINK_FRONT	0		// Permet de suivre l'état des clignotants
#define TRACE_BLINK_RF		0		// Permet de suivre l'état des clignotants avant droits
#define TRACE_BLINK_LF		0		// Permet de suivre l'état des clignotants avant gauches
#define TRACE_SPEED			0		// Permet de suivre la mesure des informations issues des capteurs vitesse
#define TRACE_SPEED_L		0		// Permet de suivre les informations issues du capteur de vitesse gauche
#define TRACE_SPEED_R		0		// Permet de suivre les informations issues du capteur de vitesse droit
// Carte pédalier
#define TRACE_BRAKE			0		//¨Permet de suivre l'état de la pédale de frein
#define TRACE_PARK			0		// Permet de suivre l'état du frein de parking
#define TRACE_ACC			0		// Permet de suivre la position de la pédale acquise grâce à la carte pédalier


//////////////////////////////////////////////////////////
//				Définition des macros de log		    //
//////////////////////////////////////////////////////////

// #TODO : Rédiger un nouveau howto
// How-to :
//	loglevel : Niveau de log à partir duquel le message sera affiché (paramètre de configuration
//	currentlevel : Niveau de log courant qui est géré au niveau du fichier.c
//	trace_cond : Condition écrite exclusivement avec des variables de type TRACE_XXX pour pouvoir configurer les messages de log
//	message : Message à afficher lorsque l'instruction est exécuté
//	value : valeur du paramètre à afficher. Un semblant de généricité est réalisé en changeant le nom de la macro


// Fonction de logging sans valeur à afficher 

#ifndef LOG_DEBUG
	#ifdef DEBUG
	#if CURRENT_LOG_LEVEL>=DEBUG
		#define LOG_DEBUG(trace_cond,message,sec,ms) {           \
				if(trace_cond==true)				            \
			 	{									            \
					printf("[%Lu] - %s \r\n",sec*1000+ms,message);	\
				}												\
		}
	#else
		#define LOG_DEBUG(trace_cond,message,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_DEVELOPMENT
	#ifdef DEVELOPMENT
	#if CURRENT_LOG_LEVEL>=DEVELOPMENT
		#define LOG_DEVELOPMENT(trace_cond,message,sec,ms) {           \
				if(trace_cond==true)				            \
			 	{									            \
					printf("[%Lu] - %s \r\n",sec*1000+ms,message);	\
				}												\
		}
	#else
		#define LOG_DEVELOPMENT(trace_cond,message,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_TESTING
	#ifdef TESTING
	#if CURRENT_LOG_LEVEL>=TESTING
		#define LOG_TESTING(trace_cond,message,sec,ms) {           \
				if(trace_cond==true)				            \
			 	{									            \
					printf("[%Lu] - %s \r\n",sec*1000+ms,message);	\
				}												\
		}
	#else
		#define LOG_TESTING(trace_cond,message,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_WARN
	#ifdef WARN
	#if CURRENT_LOG_LEVEL>=WARN
		#define LOG_WARN(trace_cond,message,sec,ms) {           \
				if(trace_cond==true)				            \
			 	{									            \
					printf("[%Lu] - %s \r\n",sec*1000+ms,message);	\
				}												\
		}
	#else
		#define LOG_WARN(trace_cond,message,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_ERROR
	#ifdef ERROR
	#if CURRENT_LOG_LEVEL>=ERROR
		#define LOG_ERROR(trace_cond,message,sec,ms) {           \
				if(trace_cond==true)				            \
			 	{									            \
					printf("[%Lu] - %s \r\n",sec*1000+ms,message);	\
				}												\
		}
	#else
		#define LOG_ERROR(trace_cond,message,sec,ms) { }
	#endif
	#endif
#endif

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Fonction de logging d'un signed int8 ou int

#ifndef LOG_DEBUG_D
	#ifdef DEBUG
	#if CURRENT_LOG_LEVEL>=DEBUG
		#define LOG_DEBUG_D(trace_cond,message,value,sec,ms) {              \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %d \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEBUG_D(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_DEVELOPMENT_D
	#ifdef DEVELOPMENT
	#if CURRENT_LOG_LEVEL>=DEVELOPMENT
		#define LOG_DEVELOPMENT_D(trace_cond,message,value,sec,ms) {        \
				if(trace_cond==true)				            			\
			 	{									           			    \
					printf("[%Lu] - %s - %d \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEVELOPMENT_D(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_TESTING_D
	#ifdef TESTING
	#if CURRENT_LOG_LEVEL>=TESTING
		#define LOG_TESTING_D(trace_cond,message,value,sec,ms) {            \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %d \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_TESTING_D(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_WARN_D
	#ifdef WARN
	#if CURRENT_LOG_LEVEL>=WARN
		#define LOG_WARN_D(trace_cond,message,value,sec,ms) {       	    \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %d \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_WARN_D(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_ERROR_D
	#ifdef ERROR
	#if CURRENT_LOG_LEVEL>=ERROR
		#define LOG_ERROR_D(trace_cond,message,value,sec,ms) {          	\
				if(trace_cond==true)				            			\	
			 	{									            			\
					printf("[%Lu] - %s - %d \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_ERROR_D(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Fonction de logging d'un unsigned int8 

#ifndef LOG_DEBUG_UD
	#ifdef DEBUG
	#if CURRENT_LOG_LEVEL>=DEBUG
		#define LOG_DEBUG_UD(trace_cond,message,value,sec,ms) {              \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %u \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEBUG_UD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_DEVELOPMENT_UD
	#ifdef DEVELOPMENT
	#if CURRENT_LOG_LEVEL>=DEVELOPMENT
		#define LOG_DEVELOPMENT_UD(trace_cond,message,value,sec,ms) {        \
				if(trace_cond==true)				            			\
			 	{									           			    \
					printf("[%Lu] - %s - %u \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEVELOPMENT_UD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_TESTING_UD
	#ifdef TESTING
	#if CURRENT_LOG_LEVEL>=TESTING
		#define LOG_TESTING_UD(trace_cond,message,value,sec,ms) {            \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %u \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_TESTING_UD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_WARN_UD
	#ifdef WARN
	#if CURRENT_LOG_LEVEL>=WARN
		#define LOG_WARN_UD(trace_cond,message,value,sec,ms) {       	    \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %u \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_WARN_UD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_ERROR_UD
	#ifdef ERROR
	#if CURRENT_LOG_LEVEL>=ERROR
		#define LOG_ERROR_UD(trace_cond,message,value,sec,ms) {          	\
				if(trace_cond==true)				            			\	
			 	{									            			\
					printf("[%Lu] - %s - %u \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_ERROR_UD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Fonction de logging d'un int32

#ifndef LOG_DEBUG_LD
	#ifdef DEBUG
	#if CURRENT_LOG_LEVEL>=DEBUG
		#define LOG_DEBUG_LD(trace_cond,message,value,sec,ms) {              \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %Ld \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEBUG_LD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_DEVELOPMENT_LD
	#ifdef DEVELOPMENT
	#if CURRENT_LOG_LEVEL>=DEVELOPMENT
		#define LOG_DEVELOPMENT_LD(trace_cond,message,value,sec,ms) {        \
				if(trace_cond==true)				            			\
			 	{									           			    \
					printf("[%Lu] - %s - %Ld \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEVELOPMENT_LD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_TESTING_LD
	#ifdef TESTING
	#if CURRENT_LOG_LEVEL>=TESTING
		#define LOG_TESTING_LD(trace_cond,message,value,sec,ms) {            \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %Ld \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_TESTING_LD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_WARN_LD
	#ifdef WARN
	#if CURRENT_LOG_LEVEL>=WARN
		#define LOG_WARN_LD(trace_cond,message,value,sec,ms) {       	    \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %Ld \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_WARN_LD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_ERROR_LD
	#ifdef ERROR
	#if CURRENT_LOG_LEVEL>=ERROR
		#define LOG_ERROR_LD(trace_cond,message,value,sec,ms) {          	\
				if(trace_cond==true)				            			\	
			 	{									            			\
					printf("[%Lu] - %s - %Ld \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_ERROR_LD(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif 

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Fonction de logging d'un unsigned int32

#ifndef LOG_DEBUG_LU
	#ifdef DEBUG
	#if CURRENT_LOG_LEVEL>=DEBUG
		#define LOG_DEBUG_LU(trace_cond,message,value,sec,ms) {              \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %Lu \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEBUG_LU(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_DEVELOPMENT_LU
	#ifdef DEVELOPMENT
	#if CURRENT_LOG_LEVEL>=DEVELOPMENT
		#define LOG_DEVELOPMENT_LU(trace_cond,message,value,sec,ms) {        \
				if(trace_cond==true)				            			\
			 	{									           			    \
					printf("[%Lu] - %s - %Lu \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_DEVELOPMENT_LU(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_TESTING_LU
	#ifdef TESTING
	#if CURRENT_LOG_LEVEL>=TESTING
		#define LOG_TESTING_LU(trace_cond,message,value,sec,ms) {            \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %Lu \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_TESTING_LU(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_WARN_LU
	#ifdef WARN
	#if CURRENT_LOG_LEVEL>=WARN
		#define LOG_WARN_LU(trace_cond,message,value,sec,ms) {       	    \
				if(trace_cond==true)				            			\
			 	{									            			\
					printf("[%Lu] - %s - %Lu \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_WARN_LU(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


#ifndef LOG_ERROR_LU
	#ifdef ERROR
	#if CURRENT_LOG_LEVEL>=ERROR
		#define LOG_ERROR_LU(trace_cond,message,value,sec,ms) {          	\
				if(trace_cond==true)				            			\	
			 	{									            			\
					printf("[%Lu] - %s - %Lu \r\n",sec*1000+ms,message,value);	\
				}															\
		}
	#else
		#define LOG_ERROR_LU(trace_cond,message,value,sec,ms) { }
	#endif
	#endif
#endif


//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Fonction pour savoir comment le Pic a démarré (Watchdog ou normal power up)	
		

#ifndef CHECK_PWUP
	#ifdef ERROR
	#if CURRENT_LOG_LEVEL >= ERROR
		#define CHECK_PWUP																\														
			switch ( restart_cause() )													\
       		{																		    \
        		  case WDT_TIMEOUT:														\
    			  {																		\
             		printf("\r\nRestarted processor because of watchdog timeout!\r\n"); \
           			break;															    \
          	      }																		\
         	case NORMAL_POWER_UP:													    \
          		{																		\
          			printf("\r\nNormal power up! PIC initialized \r\n");				\
             		break;																\
          		}																		\
       		}																	    	\
       		restart_wdt();															
	#else
		#define CHECK_PWUP
	#endif
	#endif
#endif					
	
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// Fonction pour le send CAN

#ifndef LOG_SEND_CAN
	#ifdef TRACE_CAN
	#if TRACE_CAN==1
		#define LOG_SEND_CAN(r,id,length,sec,ms) { 															\
			if(r!=0xFF)																						\
			{																								\
				printf("\r\n [%Lu] - CAN TX - %u - ID=%u - LEN=%u",(1000*sec+ms),r,id,length); 				\
			}																								\
			else																							\
			{																								\
				printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);						\
			}																								\
		}								
	#else
		#define LOG_SEND_CAN(r,id,length,sec,ms) { }
	#endif
	#endif
#endif	

// Fonction pour le listen CAN

#ifndef LOG_LISTEN_CAN
	#ifdef TRACE_CAN
	#if TRACE_CAN==1
		#define LOG_LISTEN_CAN(r,rxStat,rxId,rxLen,sec,ms) { 															\
			if(r==1)																						\
			{																								\
				printf("\r\n [%Lu] - CAN_DEBUG - BUFF=%u - ID=%u - LEN=%u - OVF=%u", tmp,rxStat.buffer, rxId, rxLen, rxStat.err_ovfl);				\
			}																								\
			else																							\
			{																								\
				printf("\r\n [%Lu] - CAN_DEBUG - FAIL on can_putd function \r\n",tmp);						\
			}																								\
		}								
	#else
		#define LOG_LISTEN_CAN(r,rxStat,rxId,rxLen,sec,ms) { }
	#endif
	#endif
#endif	
