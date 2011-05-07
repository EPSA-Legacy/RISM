//  CAN_id_v2
//  Version 2.0 - HDT - 20/04/2011
//  Version 2.1 - HDT - 22/04/2011

// Acknowledge IDs (0x00~0x4F)

#define MAB_BRAKE_ACK_ID    0x00// acknowledge de frein (provient de la MicroAutoBox)
#define MAB_BOOST_ACK_ID    0x01// acknowledge de boost (provient de la MicroAutoBox)
#define MAB_ERRSC_ACK_ID    0x02// acknowledge d'erreurs supercapas (provient de la MicroAutoBox)
#define ARR_STOP_ACK_ID     0x03// acknowledge des feux stop (provient de la carte phares arrière)
#define TDB_ERR_ACK_ID      0x04// acknowledge d'erreurs MAB (provient de la carte tableau de bord)

// High Priority IDs (0x50~0x9F)

#define TDB_BRAKE_ID        0x50// frein (provient du tableau de bord)
#define TDB_BOOST_ID        0x60// boost (provient du tableau de bord)
#define SCP_ERR_ID          0x70// erreurs de supercapas
#define MAB_ERR_ID          0x80// erreur sur la MicroAutoBox
#define MAB_STOP_ID         0x90// feux stop (provient de la MicroAutoBox)

// Medium/low Priority IDs (0xA0~infinity)

#define SCP_TEMP_ID         0xA0// température supercapas
#define ALM_CHARGE_ID       0xB0// charge de la batterie (provient de la carte alim)
#define AVT_VITESSE_ID      0xC0// vitesse du véhicule (provient de la carte vitesse phares avant)
#define TDB_PHARES_ID       0xD0// phares (provient du tableau de bord)
