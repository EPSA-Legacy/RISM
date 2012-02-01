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
	#define DEVELOPMENT 4			// Tous les messages � l'exception des donn�es du CAN sont affich�es
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

//////////////////////////////////////////////////////////
// D�finition des constantes des param�tres de trace	//
//////////////////////////////////////////////////////////

// Fonction de tracing g�n�riques
#define TRACE_ALL			0		// Condition globale permettant de passer tout les tests d'affichage � true
#define TRACE_ALL_LIGHT		0		// Permet de suivre l'�tat de tous les feux avant et arri�res
#define TRACE_ALL_LIGHT_R	0		// Permet de suivre l'�tat de tous les feux arri�res
#define TRACE_ALL_LIGHT_F	0		// Permet de suivre l'�tat de tous les feux avant
#define TRACE_ALL_CMD		0		// Permer de suivre l'�tat de toutes les commandes du tableau de bord
#define TRACE_PEDAL			0		// Permet de suivre l'int�gralit� des information issues de la carte p�dalier.
#define TRACE_CAN			0		// Permet d'afficher les donn�es du CAN
// Carte Acquisition
#define TRACE_TENSION		0		// Permet d'afficher les tensions mesur�es par la carte acquisition
#define TRACE_COURANT		0		// Permet d'afficher les courants mesur�s par la carte acquisition
#define TRACE_MOT			0		// Permet d'afficher la tension aux bornes des moteurs �lectriques mesur�e par la carte acquisition
#define TRACE_SC			0		// Permet d'afficher la tension aux bornes des supercapacit�s mesur�e par la carte acquisition
#define TRACE_CONV			0		// Permet d'afficher les donn�es relatives au convertisseur provenant de la carte acquisition
// Carte alimentation
#define TRACE_CHARGE		0		// Permet d'afficher la mesure de la tension de la batterie � l'aide de la carte alimentation
// Carte feux arri�res
#define TRACE_LIGHT_BACK	0  		// Permet de suivre l'�tat des feux et des codes � l'arri�re
#define TRACE_BRAKE_LIGHT	0		// Permet de suivre l'�tat des feux stops
#define TRACE_BLINK_BACK	0		// Permet de suivre l'�tat des clignotants
#define TRACE_BLINK_RB		0		// Permet de suivre l'�tat des clignotants arri�res droits
#define TRACE_BLINK_LB		0		// Permet de suivre l'�tat des clignotants arri�res gauches
#define TRACE_BLINK_BACK	0		//�Permet de suivre l'�tat des clignotants arri�res en g�n�ral
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
#define TRACE_BLINK_FRONT	0		//�Permet de suivre l'�tat des clignotants avant en g�n�ral
#define TRACE_SPEED			0		// Permet de suivre la mesure des informations issues des capteurs vitesse
#define TRACE_SPEED_L		0		// Permet de suivre les informations issues du capteur de vitesse gauche
#define TRACE_SPEED_R		0		// Permet de suivre les informations issues du capteur de vitesse droit
// Carte p�dalier
#define TRACE_BRAKE			0		//�Permet de suivre l'�tat de la p�dale de frein
#define TRACE_PARK			0		// Permet de suivre l'�tat du frein de parking
#define TRACE_ACC			0		// Permet de suivre la position de la p�dale acquise gr�ce � la carte p�dalier






