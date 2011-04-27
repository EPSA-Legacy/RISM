//  CAN_id_v2
//  Version 2.0 - HDT - 20/04/2011
//  Version 2.1 - HDT - 22/04/2011

// Acknowledge IDs (0~99)

#define MAB_BRAKE_ACK_ID    0// acknowledge de frein (provient de la MicroAutoBox)
#define MAB_BOOST_ACK_ID    1// acknowledge de boost (provient de la MicroAutoBox)
#define MAB_ERRSC_ACK_ID    2// acknowledge d'erreurs supercapas (provient de la MicroAutoBox)
#define ARR_STOP_ACK_ID     3// acknowledge des feux stop (provient de la carte phares arrière)
#define TDB_ERR_ACK_ID      4// acknowledge d'erreurs MAB (provient de la carte tableau de bord)

// High Priority IDs (100~199)

#define TDB_BRAKE_ID        100// frein (provient du tableau de bord)
#define TDB_BOOST_ID        110// boost (provient du tableau de bord)
#define SCP_ERR_ID          120// erreurs de supercapas
#define MAB_ERR_ID          121// erreur sur la MicroAutoBox
#define MAB_STOP_ID         130// feux stop (provient de la MicroAutoBox)

// Medium/low Priority IDs (200~infinity)

#define SCP_TEMP_ID         200// température supercapas
#define ALM_CHARGE_ID       210// charge de la batterie (provient de la carte alim)
#define AVT_VITESSE_ID      215// vitesse du véhicule (provient de la carte vitesse phares avant)
#define TDB_PHARES_ID       220// phares (provient du tableau de bord)
