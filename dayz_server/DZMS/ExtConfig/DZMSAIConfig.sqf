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
	["aimingAccuracy",0.6,0.85],
	["aimingShake",0.85,0.95],
	["aimingSpeed",0.80,0.90],
	["endurance",0.80,0.90],
	["spotDistance",0.70,1.00],
	["spotTime",0.70,1.00],
	["courage",0.80,1.00],
	["reloadSpeed",0.80,0.90],
	["commanding",0.80,0.90],
	["general",0.80,1.00]
];

DZMSSkills1 = [
	["aimingAccuracy",0.125,0.15],
	["aimingShake",0.60,0.70],
	["aimingSpeed",0.60,0.70],
	["endurance",0.55,0.65],
	["spotDistance",0.45,0.60],
	["spotTime",0.45,0.60],
	["courage",0.85,1.00],
	["reloadSpeed",0.60,0.70],
	["commanding",0.55,0.65],
	["general",0.55,0.75]
];

DZMSSkills2 = [
	["aimingAccuracy",0.50,0.65],
	["aimingShake",0.85,0.95],
	["aimingSpeed",0.80,0.90],
	["endurance",0.80,0.90],
	["spotDistance",0.70,1.00],
	["spotTime",0.70,1.00],
	["courage",0.80,1.00],
	["reloadSpeed",0.80,0.90],
	["commanding",0.80,0.90],
	["general",0.80,1.00]
];

DZMSSkills3 = [	
	["aimingAccuracy",0.60,0.85],
	["aimingShake",0.85,0.95],
	["aimingSpeed",0.80,0.90],
	["endurance",0.80,0.90],
	["spotDistance",0.70,1.00],
	["spotTime",0.70,1.00],
	["courage",0.80,1.00],
	["reloadSpeed",0.80,0.90],
	["commanding",0.80,0.90],
	["general",0.80,1.00]
];

//////////////////////////////////////////////////////////////
// This is the primary weaponlist that can be assigned to AI
// These are assigned based on AI difficulty level
DZMSWeps0 = [
"vil_AK_107",
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
"SCAR_H_CQC_CCO",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"AK_47_M",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"SCAR_H_LNG_Sniper",
"vil_PKP",
"M249_DZ"

];

DZMSWeps1 = [
"vil_AK_107",
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
"SCAR_H_CQC_CCO",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"AK_47_M",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"M249_DZ",
"SCAR_H_LNG_Sniper",
"vil_PKP",
"M4A3_CCO_EP1"
];

DZMSWeps2 = [
"vil_AK_107",
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
"SCAR_H_CQC_CCO",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"AK_47_M",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"M249_DZ",
"SCAR_H_LNG_Sniper",
"vil_PKP",
"M4A3_CCO_EP1"
];

DZMSWeps3 = [
"vil_AK_107",
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
"SCAR_H_CQC_CCO",
"SCAR_H_STD_EGLM_Spect",
"FHQ_ACR_BLK_HAMR_GL_SD",
"AK_47_M",
"vil_G36VA4Eot",
"M4A1_HWS_GL_camo",
"SVD_CAMO",
"M249_DZ",
"SCAR_H_LNG_Sniper",
"vil_PKP",
"ksvk",
"M4A3_CCO_EP1"
];

/////////////////////////////////////////////////////////////
// These are gear sets that will be randomly given to the AI
// They are all the same, but can be customized.
DZMSGear0 = [
["ItemBandage","ItemBandage","ItemPainkiller","ItemGoldBar10oz","ItemGoldBar10oz"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear1 = [
["ItemBandage","ItemBandage","ItemPainkiller","ItemGoldBar10oz","ItemGoldBar10oz"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear2 = [
["ItemBandage","ItemBandage","ItemPainkiller","ItemGoldBar","ItemGoldBar","ItemGoldBar"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear3 = [
["ItemBandage","ItemBandage","ItemPainkiller","ItemGoldBar10oz","ItemGoldBar10oz"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear4 = [
["ItemBandage","ItemBandage","ItemPainkiller","ItemGoldBar10oz","ItemGoldBar10oz","Cinder_Wall_kit","metal_panel_kit"],
["ItemKnife","ItemFlashlight"]
];

////////////////////////////////////////////////////////////
// These are the backpacks that can be assigned to AI units.
DZMSPacklist = [
"DZ_ALICE_Pack_EP1",
"DZ_TK_Assault_Pack_EP1",
"DZ_British_ACU",
"DZ_CivilBackpack_EP1",
"DZ_Backpack_EP1"
];