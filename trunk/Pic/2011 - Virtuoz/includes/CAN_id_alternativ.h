// General consts
#define YES 1
#define NO  0
#define NULL 0

// CAN priorities
#define PRIORITY_VIT2			1
#define PRIORITY_VIT1			2
#define PRIORITY_PEDALIER		3
#define PRIORITY_TDB			4
#define PRIORITY_CENTRALE		5
#define PRIORITY_PASSERELLE	    6
#define PRIORITY_FEUX_ARR       7

// Initialisation waiting times
#define T_INIT_PEDALIER			40
#define T_INIT_DIRECTION		60
#define T_INIT_TDB				80
#define T_INIT_VITESSE_AV		100
#define T_INIT_VITESSE_AR		120
#define T_INIT_HACHEUR			140
#define T_INIT_SPY				160
#define T_INIT_FEUX_ARR			180
#define T_INIT_CENTRALE			200

// Communication prioritaire Convertisseur
#define TDB_CONVERT_DATA_ID		0
#define CONVERT_TDB_ASK_ID		1

// Speed IDs
#define VIT_AVG_DATA_ID			10
#define VIT_AVG_ASK_ID			11
#define VIT_AVG_ERROR_ID		12

#define VIT_AVD_DATA_ID			20
#define VIT_AVD_ASK_ID			21
#define VIT_AVD_ERROR_ID		22

#define VIT_ARG_DATA_ID			30
#define VIT_ARG_ASK_ID			31
#define VIT_ARG_ERROR_ID		32

#define VIT_ARD_DATA_ID			40
#define VIT_ARD_ASK_ID			41
#define VIT_ARD_ERROR_ID		42

// Pédaliers
#define BRAKE_DATA_ID			50
#define BRAKE_ASK_ID			51
#define BRAKE_ERROR_ID			52

#define ACCELERATOR_DATA_ID	    60
#define ACCELERATOR_ASK_ID		61
#define ACCELERATOR_ERROR_ID	62

// Température
#define TEMP_DATA_ID			70
#define TEMP_ASK_ID				71
#define TEMP_ERROR_ID			72

// Interrupteurs tableau de bord
#define TDB_SWITCHES_DATA_ID	80
#define TDB_SWITCHES_ASK_ID		81
#define TDB_SWITCHES_ERROR_ID	82

// Charge supercapa
#define SUPERCAPA_DATA_ID		90
#define SUPERCAPA_ASK_ID		91
#define SUPERCAPA_ERROR_ID		92

// Feux arrières
#define FEUX_ARR_DATA_ID		100
#define FEUX_ARR_ASK_ID		    101
#define FEUX_ARR_ERROR_ID		102

// Feux avant
#define FEUX_AV_DATA_ID	    	100
#define FEUX_AV_ASK_ID		    101
#define FEUX_AV_ERROR_ID	    102

// Errors
#define ERROR_SPEED_NOT_AVIABLE	            1
#define ERROR_BRAKE_NOT_AVIABLE	            2
#define ERROR_ACCELERATOR_NOT_AVIABLE		3
#define ERROR_TEMP_NOT_AVIABLE				4
#define ERROR_SUPERCAP_CHARGE_NOT_AVIABLE	5

#define VIT_ERROR_VAL			255
#define SUPERCAPA_ERROR_VAL	    255
#define TEMP_ERROR_VAL			255

// Mode d'hybridation
#define MODE_OFF                0b00000000
#define MODE_THERM              0b00000001
#define MODE_ELEC               0b00000010
#define MODE_HYBRID             0b00000011

#define OVERBOOST_OFF           0b00000000
#define OVERBOOST_ON            0b00000100
