/**
 * English and French comments
 * Commentaires anglais et français
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du système de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes dérivant de celles utilisées dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour gérer de nouveaux objets avec le système logistique. Le premier consiste à ajouter
 * ces objets dans les listes appropriées ci-dessous. Le deuxième est de créer un fichier externe dans le répertoire
 * /addons_config/ selon le même schéma que ceux qui existent déjà, et d'ajouter un #include à la fin de ce présent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des véhicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs = [
	"V3S_Civ",
	"V3S_Open_TK_CIV_EP1",
	"V3S_Open_TK_EP1",
	"UralCivil",
	"UralCivil2",
	"Ural_UN_EP1",
	"Ural_TK_CIV_EP1",
	"Ural_CDF",
	"Kamaz",
	"MTVR_DES_EP1",
	"MTVR",
	"VIL_volvofl",
	"KamazRefuel_DZ",
	"MtvrRefuel_DES_EP1_DZ",
	"UralRefuel_TK_EP1_DZ",
	"V3S_Refuel_TK_GUE_EP1_DZ",
	"VIL_asistvan",
	"GAZ_Vodnik",
	"GAZ_Vodnik_DZE",
	"V3S_Salvage_TK_GUE_EP1",
	"V3S_Refuel_TK_EP1_DZ",
	"GAZ_Vodnik_MedEvac",
	"SUV_TK_CIV_EP1",
	"SUV_Green",
	"SUV_Yellow",
	"SUV_White",
	"SUV_Silver",
	"SUV_Red",
	"SUV_Pink",
	"SUV_Orange",
	"SUV_Charcoal",
	"SUV_Blue",
	"ArmoredSUV_PMC_DZ",
	"ArmoredSUV_PMC_DZE",
	"SUV_Camo",
	"HMMWV_Ambulance",
	"HMMWV_M2",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_DES_EP1",
	"HMMWV_DZ",
	"HMMWV_M1035_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
	"HMMWV_M998A2_SOV_DES_EP1",
	"LandRover_CZ_EP1",
	"LandRover_MG_TK_EP1",
	"LandRover_MG_TK_EP1_DZE",
	"LandRover_Special_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"Ikarus_TK_CIV_EP1",
	"Ikarus",
	"Tractor",
	"LandRover_CZ_EP1",
	"BW_Ikarus1",
	"BW_Ikarus2",
	"BAF_Offroad_D",
	"BAF_Offroad_W",
	"LandRover_TK_CIV_EP1",
	"UralRefuel_INS",
	"Ural_INS",
	"HMMWV_DES_EP1",
	"HMMWV_Ambulance_DZ",
	"Oring_Ikarus",
	"BAF_Jackal2_L2A1_D"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = [
	"VWGolf",
	"Lada1",
	"Lada2",
	"LadaLM",
	"Lada2_TK_CIV_EP1",
	"Skoda",
	"SkodaGreen",
	"SkodaRed",
	"SkodaBlue",
	"car_sedan",
	"car_hatchback",
	"policecar",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Volha_1_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
	"S1203_ambulance_EP1",
	"S1203_TK_CIV_EP1",
	"Ikarus",
	"Ikarus_TK_CIV_EP1",
	"tractor",
	"SUV_TK_CIV_EP1",
	"SUV_Green",
	"SUV_Yellow",
	"SUV_White",
	"SUV_Silver",
	"SUV_Red",
	"SUV_Pink",
	"SUV_Orange",
	"SUV_Charcoal",
	"SUV_Blue",
	"ArmoredSUV_PMC_DZ",
	"ArmoredSUV_PMC_DZE",
	"SUV_Camo",
	"HMMWV_Ambulance",
	"HMMWV_M2",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_DES_EP1",
	"HMMWV_DZ",
	"HMMWV_M1035_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
	"HMMWV_M998A2_SOV_DES_EP1",
	"LandRover_CZ_EP1",
	"LandRover_MG_TK_EP1",
	"LandRover_MG_TK_EP1_DZE",
	"LandRover_Special_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"M1030_US_DES_EP1",
	"UAZ_Unarmed_TK_EP1",
	"UAZ_Unarmed_TK_CIV_EP1",
	"UAZ_Unarmed_UN_EP1",
	"UAZ_MG_TK_EP1",
	"UAZ_MG_TK_EP1_DZE",
	"UAZ_INS",
	"UAZ_RU",
	"UAZ_CDF",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",
	"Pickup_PK_TK_GUE_EP1",
	"Pickup_PK_GUE",
	"Pickup_PK_GUE_DZE",
	"Pickup_PK_INS",
	"Pickup_PK_INS_DZE",
	"Offroad_DSHKM_Gue",
	"Offroad_DSHKM_Gue_DZE",
	"VIL_alfa_civil",
	"VIL_alfa_civil1",
	"VIL_alfa_civil2",
	"VIL_berlingo",
	"VIL_bmw7_civil",
	"VIL_bmw7_civil1",
	"VIL_bmw7_civil2",
	"VIL_bmw7_civilvip",
	"VIL_citrone_civil",
	"VIL_citrone_civil1",
	"VIL_citrone_civil2",
	"VIL_citrone_civil3",
	"VIL_ducato_bus",
	"VIL_ducato_cargo",
	"VIL_ducato_cargo2",
	"VIL_fobia_civil",
	"VIL_fobia_civil1",
	"VIL_fobia_civil2",
	"VIL_fobia_civil3",
	"VIL_fobia_civil4",
	"VIL_fobia_civil5",
	"VIL_hilux1_civi2",
	"VIL_hilux1_civi3",
	"VIL_hilux1_civil",
	"VIL_hilux1_police",
	"VIL_karoca_civil",
	"VIL_karoca_civil_red",
	"VIL_kia_ceed",
	"VIL_kia_ceed2",
	"VIL_kia_ceed3",
	"VIL_kia_ceed4",
	"VIL_kia_ceeddwa",
	"VIL_kia_ceeddwa2",
	"VIL_kia_ceeddwa3",
	"VIL_kia_ceeddwa4",
	"VIL_kia_ceeddwa5",
	"VIL_kia_ceeddwa6",
	"VIL_lublin_freez",
	"VIL_mondeo_civil",
	"VIL_mondeo_civil1",
	"VIL_mondeo_civil3",
	"VIL_mondeo_civil4",
	"VIL_mondeo_civil5",
	"VIL_octavia_civil",
	"VIL_octavia_civil2",
	"VIL_octavia_civil3",
	"VIL_octavia_civil4",
	"VIL_panda_civil",
	"VIL_panda_civil1",
	"VIL_passat_civil",
	"VIL_passat_civil1",
	"VIL_passat_civil2",
	"VIL_passat_civil3",
	"VIL_passat_civil4",
	"VIL_passat_civil5",
	"VIL_smart_civil",
	"VIL_smart_civil1",
	"VIL_smart_civil2",
	"VIL_smart_civil3",
	"VIL_smart_civil4",
	"VIL_smart_civil5",
	"VIL_sprinter_cargo",
	"VIL_Star_S2000",
	"VIL_Star_S2000o",
	"VIL_transit_civ",
	"VIL_transit_truck",
	"VIL_vivaro_amb",
	"VIL_vivaro_civ",
	"VIL_volvofl",
	"VIL_vwt4_banksec",
	"VIL_vwt4_civ"
];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des véhicules aériens pouvant héliporter des objets héliportables.
 */
R3F_LOG_CFG_heliporteurs = [
	"CH47_base_EP1",
	"CH_47F_EP1_DZE",
	"Mi17_base",
	"Mi17_Civilian_DZ",
	"Mi17_DZ",
	"Mi17_DZE",
	"Mi24_Base",
	"UH1H_base",
	"UH1_Base",
	"UH1Y_DZE",
	"UH60_Base",
	"UH60M_EP1_DZE",
	"MV22",
	"BAF_Merlin_HC3_D",
	"Ka60_Base_PMC",
	"Mi24_Base",
	"BAF_Merlin_DZE",
	"MH60S_DZE"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_objets_heliportables = [
"VWGolf",
	"Lada1",
	"Lada2",
	"LadaLM",
	"Lada2_TK_CIV_EP1",
	"Skoda",
	"SkodaGreen",
	"SkodaRed",
	"SkodaBlue",
	"car_sedan",
	"car_hatchback",
	"policecar",
	"GLT_M300_LT",
	"GLT_M300_ST",
	"Volha_1_TK_CIV_EP1",
	"VolhaLimo_TK_CIV_EP1",
	"S1203_ambulance_EP1",
	"S1203_TK_CIV_EP1",
	"Ikarus",
	"Ikarus_TK_CIV_EP1",
	"tractor",
	"SUV_TK_CIV_EP1",
	"SUV_Green",
	"SUV_Yellow",
	"SUV_White",
	"SUV_Silver",
	"SUV_Red",
	"SUV_Pink",
	"SUV_Orange",
	"SUV_Charcoal",
	"SUV_Blue",
	"ArmoredSUV_PMC_DZ",
	"ArmoredSUV_PMC_DZE",
	"SUV_Camo",
	"HMMWV_Ambulance",
	"HMMWV_M2",
	"HMMWV_Ambulance_CZ_DES_EP1",
	"HMMWV_DES_EP1",
	"HMMWV_DZ",
	"HMMWV_M1035_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1",
	"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
	"HMMWV_M998A2_SOV_DES_EP1",
	"LandRover_CZ_EP1",
	"LandRover_MG_TK_EP1",
	"LandRover_MG_TK_EP1_DZE",
	"LandRover_Special_CZ_EP1",
	"LandRover_TK_CIV_EP1",
	"M1030_US_DES_EP1",
	"UAZ_Unarmed_TK_EP1",
	"UAZ_Unarmed_TK_CIV_EP1",
	"UAZ_Unarmed_UN_EP1",
	"UAZ_MG_TK_EP1",
	"UAZ_MG_TK_EP1_DZE",
	"UAZ_INS",
	"UAZ_RU",
	"UAZ_CDF",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open_EP1",
	"datsun1_civil_1_open",
	"datsun1_civil_2_covered",
	"datsun1_civil_3_open",
	"Pickup_PK_TK_GUE_EP1",
	"Pickup_PK_GUE",
	"Pickup_PK_GUE_DZE",
	"Pickup_PK_INS",
	"Pickup_PK_INS_DZE",
	"Offroad_DSHKM_Gue",
	"Offroad_DSHKM_Gue_DZE",
	"VIL_alfa_civil",
	"VIL_alfa_civil1",
	"VIL_alfa_civil2",
	"VIL_berlingo",
	"VIL_bmw7_civil",
	"VIL_bmw7_civil1",
	"VIL_bmw7_civil2",
	"VIL_bmw7_civilvip",
	"VIL_citrone_civil",
	"VIL_citrone_civil1",
	"VIL_citrone_civil2",
	"VIL_citrone_civil3",
	"VIL_ducato_bus",
	"VIL_ducato_cargo",
	"VIL_ducato_cargo2",
	"VIL_fobia_civil",
	"VIL_fobia_civil1",
	"VIL_fobia_civil2",
	"VIL_fobia_civil3",
	"VIL_fobia_civil4",
	"VIL_fobia_civil5",
	"VIL_hilux1_civi2",
	"VIL_hilux1_civi3",
	"VIL_hilux1_civil",
	"VIL_hilux1_police",
	"VIL_karoca_civil",
	"VIL_karoca_civil_red",
	"VIL_kia_ceed",
	"VIL_kia_ceed2",
	"VIL_kia_ceed3",
	"VIL_kia_ceed4",
	"VIL_kia_ceeddwa",
	"VIL_kia_ceeddwa2",
	"VIL_kia_ceeddwa3",
	"VIL_kia_ceeddwa4",
	"VIL_kia_ceeddwa5",
	"VIL_kia_ceeddwa6",
	"VIL_lublin_freez",
	"VIL_mondeo_civil",
	"VIL_mondeo_civil1",
	"VIL_mondeo_civil3",
	"VIL_mondeo_civil4",
	"VIL_mondeo_civil5",
	"VIL_octavia_civil",
	"VIL_octavia_civil2",
	"VIL_octavia_civil3",
	"VIL_octavia_civil4",
	"VIL_panda_civil",
	"VIL_panda_civil1",
	"VIL_passat_civil",
	"VIL_passat_civil1",
	"VIL_passat_civil2",
	"VIL_passat_civil3",
	"VIL_passat_civil4",
	"VIL_passat_civil5",
	"VIL_smart_civil",
	"VIL_smart_civil1",
	"VIL_smart_civil2",
	"VIL_smart_civil3",
	"VIL_smart_civil4",
	"VIL_smart_civil5",
	"VIL_sprinter_cargo",
	"VIL_Star_S2000",
	"VIL_Star_S2000o",
	"VIL_transit_civ",
	"VIL_transit_truck",
	"VIL_vivaro_amb",
	"VIL_vivaro_civ",
	"VIL_volvofl",
	"VIL_vwt4_banksec",
	"VIL_vwt4_civ"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le référentiel arbitraire utilisé est : une caisse de munition de type USVehicleBox "pèse" 12 unités.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorité d'une déclaration de capacité sur une autre correspond à leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient à la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est déclaré avec une capacité de 140 avant "Car". Et que "Car" est déclaré après "Truck" avec une capacité de 40,
 *   Alors toutes les sous-classes appartenant à "Truck" auront une capacité de 140. Et toutes les sous-classes appartenant
 *   à "Car", exceptées celles de "Truck", auront une capacité de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des véhicules (terrestres ou aériens) pouvant transporter des objets transportables.
 * Le deuxième élément des tableaux est la capacité de chargement (en relation avec le coût de capacité des objets).
 */
R3F_LOG_CFG_transporteurs = [
	["CH_47F_EP1_DZ", 100],
	["CH_47F_EP1_DZE", 100],
	["VIL_volvofl",100],
	["Mi17_DZ", 50],
	["Mi17_DZE", 50],
	["Mi24_D_TK_EP1_DZ", 50],
	["Mi17_Civilian_DZ", 50],
	["MTVR_DES_EP1", 50],
	["V3S_Open_TK_CIV_EP1", 50],
	["V3S_Open_TK_EP1", 50],
	["Ural_UN_EP1", 50],
	["Ural_TK_CIV_EP1", 50],
	["Ural_CDF", 50],
	["hilux1_civil_1_open", 25],
	["hilux1_civil_2_covered", 25],
	["hilux1_civil_3_open_EP1", 25],
	["datsun1_civil_1_open", 25],
	["datsun1_civil_2_covered", 25],
	["datsun1_civil_3_open", 25],
	["Pickup_PK_TK_GUE_EP1", 25],
	["Pickup_PK_GUE", 25],
	["Pickup_PK_INS", 25],
	["Pickup_PK_INS_DZE", 25],
	["Offroad_DSHKM_Gue", 25],
	["Offroad_DSHKM_Gue_DZE", 25],
	["Pickup_PK_GUE_DZE", 25],
	["VIL_sprinter_cargo",1],
	["VIL_Star_S2000", 25],
	["VIL_Star_S2000o", 25],
	["VIL_transit_civ", 25],
	["VIL_transit_truck", 25],
	["LandRover_CZ_EP1", 10],
	["LandRover_MG_TK_EP1", 10],
	["LandRover_MG_TK_EP1_DZE", 10],
	["LandRover_Special_CZ_EP1", 10],
	["LandRover_TK_CIV_EP1", 10],
	["SUV_Green", 10],
	["SUV_Yellow", 10],
	["SUV_White", 10],
	["SUV_Silver", 10],
	["SUV_Red", 10],
	["SUV_Pink", 10],
	["SUV_Orange", 10],
	["SUV_Charcoal", 10],
	["SUV_Blue", 10],
	["ArmoredSUV_PMC_DZ", 10],
	["ArmoredSUV_PMC_DZE", 10],
	["SUV_Camo", 10],
	["Zodiac", 10],
	["RHIB", 10],
	["Fishing_Boat", 10]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxième élément des tableaux est le coût de capacité (en relation avec la capacité des véhicules).
 */
 
R3F_LOG_CFG_objets_transportables =  
[
	["VWGolf", 100],
	["Lada1", 100],
	["Lada2", 100],
	["LadaLM", 100],
	["Lada2_TK_CIV_EP1", 100],
	["Skoda", 100],
	["SkodaGreen", 100],
	["SkodaRed", 100],
	["SkodaBlue", 100],
	["car_sedan", 100],
	["car_hatchback", 100],
	["policecar", 100],
	["ATV_CZ_EP1", 50],
	["ATV_US_EP1", 50],
	["Old_moto_TK_Civ_EP1", 25],
	["M1030_US_DES_EP1", 25],
	["TT650_Civ", 25],
	["TT650_Ins", 25],
	["TT650_TK_CIV_EP1", 25],
	["MMT_Civ", 25],
	["Old_bike_TK_INS_EP1", 25],
	["Barrels", 15],
	["USVehicleBox_EP1", 10],
	["USSpecialWeaponsBox", 5],
	["TKSpecialWeapons_EP1", 5],
	["BAF_BasicAmmunitionBox", 5],
	["VIL_smart_civil", 50],
	["VIL_smart_civil1", 50],
	["VIL_smart_civil2", 50],
	["VIL_smart_civil3", 50],
	["VIL_smart_civil4", 50],
	["VIL_smart_civil5", 50],
	["CSJ_GyroC",25],
	["CSJ_GyroCover",25],
	["CSJ_GyroP",25]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */

R3F_LOG_CFG_objets_deplacables = 
[
	"AN2_DZ",
	"GNT_C185U",
	"GNT_C185",
	"GNT_C185R",
	"GNT_C185C",
	"CSJ_GyroC",
	"CSJ_GyroCover",
	"CSJ_GyroP"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalités logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
#include "addons_config\arma2_CO_objects.sqf"