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
	#define DEVELOPMENT 4			// Tous les messages à l'exception des données du CAN sont affichées
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

//////////////////////////////////////////////////////////
// Définition des constantes des paramètres de trace	//
//////////////////////////////////////////////////////////

// Fonction de tracing génériques
#define TRACE_ALL			0		// Condition globale permettant de passer tout les tests d'affichage à true
#define TRACE_ALL_LIGHT		0		// Permet de suivre l'état de tous les feux avant et arrières
#define TRACE_ALL_LIGHT_R	0		// Permet de suivre l'état de tous les feux arrières
#define TRACE_ALL_LIGHT_F	0		// Permet de suivre l'état de tous les feux avant
#define TRACE_ALL_CMD		0		// Permer de suivre l'état de toutes les commandes du tableau de bord
#define TRACE_PEDAL			0		// Permet de suivre l'intégralité des information issues de la carte pédalier.
#define TRACE_CAN			0		// Permet d'afficher les données du CAN
// Carte Acquisition
#define TRACE_TENSION		0		// Permet d'afficher les tensions mesurées par la carte acquisition
#define TRACE_COURANT		0		// Permet d'afficher les courants mesurés par la carte acquisition
#define TRACE_MOT			0		// Permet d'afficher la tension aux bornes des moteurs électriques mesurée par la carte acquisition
#define TRACE_SC			0		// Permet d'afficher la tension aux bornes des supercapacités mesurée par la carte acquisition
#define TRACE_CONV			0		// Permet d'afficher les données relatives au convertisseur provenant de la carte acquisition
// Carte alimentation
#define TRACE_CHARGE		0		// Permet d'afficher la mesure de la tension de la batterie à l'aide de la carte alimentation
// Carte feux arrières
#define TRACE_LIGHT_BACK	0  		// Permet de suivre l'état des feux et des codes à l'arrière
#define TRACE_BRAKE_LIGHT	0		// Permet de suivre l'état des feux stops
#define TRACE_BLINK_BACK	0		// Permet de suivre l'état des clignotants
#define TRACE_BLINK_RB		0		// Permet de suivre l'état des clignotants arrières droits
#define TRACE_BLINK_LB		0		// Permet de suivre l'état des clignotants arrières gauches
#define TRACE_BLINK_BACK	0		//¨Permet de suivre l'état des clignotants arrières en général
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
#define TRACE_BLINK_FRONT	0		//¨Permet de suivre l'état des clignotants avant en général
#define TRACE_SPEED			0		// Permet de suivre la mesure des informations issues des capteurs vitesse
#define TRACE_SPEED_L		0		// Permet de suivre les informations issues du capteur de vitesse gauche
#define TRACE_SPEED_R		0		// Permet de suivre les informations issues du capteur de vitesse droit
// Carte pédalier
#define TRACE_BRAKE			0		//¨Permet de suivre l'état de la pédale de frein
#define TRACE_PARK			0		// Permet de suivre l'état du frein de parking
#define TRACE_ACC			0		// Permet de suivre la position de la pédale acquise grâce à la carte pédalier






