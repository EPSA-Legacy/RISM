// General consts
#define YES  1
#define NO   0
#define ON   1
#define OFF  0
#define NULL 0

// CAN messages
#define ACCELERATOR_ASK        1 // Message demandant l'emission des informations de la pédale d'accelerateur
#define SPEED_ASK              2 // Message demandant l'emission des informations de vitesse des capteurs des roues
#define SPEED_DATA             3 // Message contenant les information de la vitesse réelle du véhicule
#define ACCELERATOR_DATA       4 // Message contenant les information de la pédale d'accélérateur
#define ENGINE_RPM             5 // Message indiquant le régime moteur
#define BRAKE_ORDER            6 // Message indiquant la pression sur le frein
#define BLINK_ORDER_LEFT       7 // Message commandant les clignotants droits
#define BLINK_ORDER_RIGHT      8 // Message commandant les clignotants gauches
#define PARK_ORDER             9 // Message indiquant l'usage du frein à main
#define LIGHT_ORDER           10 // Message indiquant le changement d'état des feux
#define ENGINE_TEMP           11 // Message indiquant la température du moteur
#define PARK_ACK              12 // Message accusant la réception de PARK_ORDER
#define LIGHT_FRONT_ACK       13 // Message accusant la réception de LIGHT_ORDER
#define LIGHT_BACK_ACK        14 // Message accusant la réception de LIGHT_ORDER
// #define BLIGHT_ACK            15 // Message accusant la réception de BRAKE_ORDER
#define BLINK_RIGHT_FRONT_ACK 16 // Message accusant la réception de BLINK_ORDER_RIGHT
#define BLINK_RIGHT_BACK_ACK  17 // Message accusant la réception de BLINK_ORDER_RIGHT
#define BLINK_LEFT_FRONT_ACK  18 // Message accusant la réception de BLINK_ORDER_LEFT
#define BLINK_LEFT_BACK_ACK   19 // Message accusant la réception de BLINK_ORDER_LEFT
#define BATTERY_STATUS        20 // Message contenant la charge de la batterie
#define ACCELERATOR_ERR       21 // Non implémenté
#define SPEED_ERR             22 // Non implémenté
#define VOLTAGE_DATA		  23 // Message contenant les informations électriques en tension provenant de la carte acquisition
#define CURRENT_DATA		  24 // Message contenant les informations électriques en courant provenant de la carte acquisition


//Temps de réemission entre les messages (en ms)
#define TR_SPEED 10
#define TR_ACCELERATOR 5
#define TR_RPM 180				// Car une nouvelle valeur est calculé toutes les 200 ms
#define TR_BRAKE 5
#define TR_BLINK 200
#define TR_PARK 500
#define TR_LIGHT 200
// #define TR_BLIGHT 1
#define TR_BATTERY 5000
#define TR_ELECTRIC 10

