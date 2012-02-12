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
//			les fonctionnalit�s de debug et de loging des messages d'erreur et 		//
//			traces d'ex�cution des programmes pr�sents sur les cartes g�n�riques	//
//																					//
//		Developpeur : BLD															//
//																					//
//		Historique :																//
//																					//
//			31/01/12 : D�finition des niveaux de logs								//
//			01/02/12 : D�finition des constantes du type TRACE						//
//																					//
//////////////////////////////////////////////////////////////////////////////////////


// D�finition des diff�rents logs level
// Pour un niveau de log d�fini tous les messages provenant de niveaux de log inf�rieur
// sont trait�s et afficher

#ifndef DEBUG
	#define DEBUG 5					// Tous les messages sont affich�s et trait�s		
#endif

#ifndef DEVELOPMENT
	#define DEVELOPMENT 4			// Tous les messages � utiles au d�veloppement sont affich�s
#endif

#ifndef TESTING
	#define TESTING 3				// Seuls les donn�es utiles aux tests sont affich�es
#endif

#ifndef WARN
	#define WARN 2					// Seules les alertes potentiellement dangeureuses type d�passement de valeurs sont affich�es
#endif

#ifndef ERROR
	#define	ERROR 1					// Seules les erreurs sont affich�es
#endif

#ifndef RUN
	#define RUN 0					// Aucun message n'est affich� (mode r�serv� pour la course)
#endif

//////////////////////////////////////////
// D�finition du niveau de log courant  //
//////////////////////////////////////////

#define CURRENT_LOG_LEVEL DEBUG

//////////////////////////////////////////////////////////
// D�finition des constantes des param�tres de trace	//
//////////////////////////////////////////////////////////

// Fonction de tracing g�n�riques
#define TRACE_ALL			1		// Condition globale permettant de passer tout les tests d'affichage � true exception faite de ceux du CAN
#define TRACE_ALL_LIGHT		0		// Permet de suivre l'�tat de tous les feux avant et arri�res
#define TRACE_ALL_LIGHT_R	0		// Permet de suivre l'�tat de tous les feux arri�res
#define TRACE_ALL_LIGHT_F	0		// Permet de suivre l'�tat de tous les feux avant
#define TRACE_ALL_CMD		1		// Permer de suivre l'�tat de toutes les commandes du tableau de bord
#define TRACE_PEDAL			0		// Permet de suivre l'int�gralit� des information issues de la carte p�dalier.
#define TRACE_CAN			1		// Permet d'afficher les donn�es du CAN
#define TRACE_EXEC			0		// Permet d'afficher les traces d'ex�cution
// Carte Acquisition
#define TRACE_TENSION		0		// Permet d'afficher les tensions mesur�es par la carte acquisition
#define TRACE_COURANT		0		// Permet d'afficher les courants mesur�s par la carte acquisition
#define TRACE_MOT			0		// Permet d'afficher la tension aux bornes des moteurs �lectriques mesur�e par la carte acquisition
#define TRACE_SC			0		// Permet d'afficher la tension aux bornes des supercapacit�s mesur�e par la carte acquisition
#define TRACE_CONV			0		// Permet d'afficher les donn�es relatives au convertisseur provenant de la carte acquisition
// Carte alimentation
#define TRACE_CHARGE		0		// Permet d'afficher la mesure de la tension de la batterie � l'aide de la carte alimentation
// Carte Affichage tableau de bord
#define TRACE_DSPMODE		0		// Permet d'afficher le mode d'affichage en cours d'utilisation
// Carte feux arri�res
#define TRACE_LIGHT_BACK	0  		// Permet de suivre l'�tat des feux et des codes � l'arri�re
#define TRACE_BRAKE_LIGHT	0		// Permet de suivre l'�tat des feux stops
#define TRACE_BLINK_BACK	0		// Permet de suivre l'�tat des clignotants
#define TRACE_BLINK_RB		0		// Permet de suivre l'�tat des clignotants arri�res droits
#define TRACE_BLINK_LB		0		// Permet de suivre l'�tat des clignotants arri�res gauches
// Carte Moteur
#define TRACE_RPM			0		// Permet de suivre le r�gime moteur mesur� par la carte moteur
// Carte Tableau de Bord
#define TRACE_CMD_BLINK		0		// Permet de suivre les commandes des clignotants
#define TRACE_CMD_BLINK_L	0		// Permet de suivre les commandes des clignotants gauches
#define TRACE_CMD_BLINK_R	0		// Permet de suivre les commandes des clignotants droits
#define TRACE_CMD_WARNING	0		// Permet de suivre la commande des warning
#define TRACE_CMD_LIGHT		0		// Permet de suivre la commande des codes et des feux
#define TRACE_CMD_CODE		0		// Permet de suivre la commande des codes
#define TRACE_CMD_FEUX		0		// Permet de suivre la commande des feux
// Carte vitesse feux avant
#define TRACE_LIGHT_FRONT	0  		// Permet de suivre l'�tat des feux et des codes � l'avant
#define TRACE_BLINK_FRONT	0		// Permet de suivre l'�tat des clignotants
#define TRACE_BLINK_RF		0		// Permet de suivre l'�tat des clignotants avant droits
#define TRACE_BLINK_LF		0		// Permet de suivre l'�tat des clignotants avant gauches
#define TRACE_SPEED			0		// Permet de suivre la mesure des informations issues des capteurs vitesse
#define TRACE_SPEED_L		0		// Permet de suivre les informations issues du capteur de vitesse gauche
#define TRACE_SPEED_R		0		// Permet de suivre les informations issues du capteur de vitesse droit
// Carte p�dalier
#define TRACE_BRAKE			0		//�Permet de suivre l'�tat de la p�dale de frein
#define TRACE_PARK			0		// Permet de suivre l'�tat du frein de parking
#define TRACE_ACC			0		// Permet de suivre la position de la p�dale acquise gr�ce � la carte p�dalier


//////////////////////////////////////////////////////////
//				D�finition des macros de log		    //
//////////////////////////////////////////////////////////

// #TODO : R�diger un nouveau howto
// How-to :
//	loglevel : Niveau de log � partir duquel le message sera affich� (param�tre de configuration
//	currentlevel : Niveau de log courant qui est g�r� au niveau du fichier.c
//	trace_cond : Condition �crite exclusivement avec des variables de type TRACE_XXX pour pouvoir configurer les messages de log
//	message : Message � afficher lorsque l'instruction est ex�cut�
//	value : valeur du param�tre � afficher. Un semblant de g�n�ricit� est r�alis� en changeant le nom de la macro


// Fonction de logging sans valeur � afficher 

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

// Fonction pour savoir comment le Pic a d�marr� (Watchdog ou normal power up)	
		

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
