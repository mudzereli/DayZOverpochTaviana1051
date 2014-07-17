/*
	DZMSAIConfig.sqf
	This is a configuration for the AI that spawn at missions.
	This includes their skin, weapons, gear, and skills.
	You can adjust these to your liking, but it is for advanced users.
*/

///////////////////////////////////////////////
// Array of skin classnames for the AI to use
DZMSBanditSkins = ["Bandit1_DZ","BanditW1_DZ"];

////////////////////////
// Array of AI Skills
DZMSSkills0 = [
	["aimingAccuracy",0.10,0.125],
	["aimingShake",0.45,0.55],
	["aimingSpeed",0.45,0.55],
	["endurance",0.40,0.50],
	["spotDistance",0.30,0.45],
	["spotTime",0.30,0.45],
	["courage",0.40,0.60],
	["reloadSpeed",0.50,0.60],
	["commanding",0.40,0.50],
	["general",0.40,0.60]
];

DZMSSkills1 = [
	["aimingAccuracy",0.125,0.15],
	["aimingShake",0.60,0.70],
	["aimingSpeed",0.60,0.70],
	["endurance",0.55,0.65],
	["spotDistance",0.45,0.60],
	["spotTime",0.45,0.60],
	["courage",0.55,0.75],
	["reloadSpeed",0.60,0.70],
	["commanding",0.55,0.65],
	["general",0.55,0.75]
];

DZMSSkills2 = [
	["aimingAccuracy",0.15,0.20],
	["aimingShake",0.75,0.85],
	["aimingSpeed",0.70,0.80],
	["endurance",0.70,0.80],
	["spotDistance",0.60,0.75],
	["spotTime",0.60,0.75],
	["courage",0.70,0.90],
	["reloadSpeed",0.70,0.80],
	["commanding",0.70,0.90],
	["general",0.70,0.90]
];

DZMSSkills3 = [	
	["aimingAccuracy",0.20,0.25],
	["aimingShake",0.85,0.95],
	["aimingSpeed",0.80,0.90],
	["endurance",0.80,0.90],
	["spotDistance",0.70,0.85],
	["spotTime",0.70,0.85],
	["courage",0.80,1.00],
	["reloadSpeed",0.80,0.90],
	["commanding",0.80,0.90],
	["general",0.80,1.00]
];

//////////////////////////////////////////////////////////////
// This is the primary weaponlist that can be assigned to AI
// These are assigned based on AI difficulty level
DZMSWeps0 = [
"AK_107_BASE",
"AK_107_GL_kobra",
"RPK_74",
"Saiga12K",
"RH_hk416seotech",
"RH_hk416aim",
"RH_hk416glacog",
"RH_hk417eotech",
"RH_hk417sdaim",
"RH_massd",
"RH_acrbglaim",
"RH_m1seot",
"RH_m1stacog",
"Sa58V_CCO_EP1",
"SCAR_L_STD_Mk4CQT",
"SCAR_L_CQC_EGLM_Holo",
"SCAR_H_Base",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"vil_AK47_BASE",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"M249_DZ"

];

DZMSWeps1 = [
"AK_107_BASE",
"AK_107_GL_kobra",
"RPK_74",
"Saiga12K",
"RH_hk416seotech",
"RH_hk416aim",
"RH_hk416glacog",
"RH_hk417eotech",
"RH_hk417sdaim",
"RH_massd",
"RH_acrbglaim",
"RH_m1seot",
"RH_m1stacog",
"Sa58V_CCO_EP1",
"SCAR_L_STD_Mk4CQT",
"SCAR_L_CQC_EGLM_Holo",
"SCAR_H_Base",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"vil_AK47_BASE",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"M249_DZ",
"M4A3_CCO_EP1"
];

DZMSWeps2 = [
"AK_107_BASE",
"AK_107_GL_kobra",
"RPK_74",
"Saiga12K",
"RH_hk416seotech",
"RH_hk416aim",
"RH_hk416glacog",
"RH_hk417eotech",
"RH_hk417sdaim",
"RH_massd",
"RH_acrbglaim",
"RH_m1seot",
"RH_m1stacog",
"Sa58V_CCO_EP1",
"SCAR_L_STD_Mk4CQT",
"SCAR_L_CQC_EGLM_Holo",
"SCAR_H_Base",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"vil_AK47_BASE",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"M249_DZ",
"M4A3_CCO_EP1"
];

DZMSWeps3 = [
"AK_107_BASE",
"AK_107_GL_kobra",
"RPK_74",
"Saiga12K",
"RH_hk416seotech",
"RH_hk416aim",
"RH_hk416glacog",
"RH_hk417eotech",
"RH_hk417sdaim",
"RH_massd",
"RH_acrbglaim",
"RH_m1seot",
"RH_m1stacog",
"Sa58V_CCO_EP1",
"SCAR_L_STD_Mk4CQT",
"SCAR_L_CQC_EGLM_Holo",
"SCAR_H_Base",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"vil_AK47_BASE",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"M249_DZ",
"M4A3_CCO_EP1"
];

/////////////////////////////////////////////////////////////
// These are gear sets that will be randomly given to the AI
// They are all the same, but can be customized.
DZMSGear0 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear1 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear2 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear3 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear4 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

////////////////////////////////////////////////////////////
// These are the backpacks that can be assigned to AI units.
DZMSPacklist = [
"DZ_Patrol_Pack_EP1",
"DZ_Assault_Pack_EP1",
"DZ_Czech_Vest_Puch",
"DZ_ALICE_Pack_EP1",
"DZ_TK_Assault_Pack_EP1",
"DZ_British_ACU",
"DZ_CivilBackpack_EP1",
"DZ_Backpack_EP1"
];