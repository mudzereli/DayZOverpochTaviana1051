//Extra Large Gun Box

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["DMR", 2];
_box addWeaponCargoGlobal ["BAF_LRR_scoped", 1];
_box addWeaponCargoGlobal ["RH_hk417acog", 2];
_box addWeaponCargoGlobal ["RH_hk417eotech", 2];
_box addWeaponCargoGlobal ["RH_hk417sdacog", 2];
_box addWeaponCargoGlobal ["SCAR_H_STD_EGLM_Spect", 1];
_box addWeaponCargoGlobal ["FHQ_ACR_WDL_HAMR_GL_F", 2];
_box addWeaponCargoGlobal ["FHQ_ACR_SNW_G33", 2];
_box addWeaponCargoGlobal ["vil_AG3EOT", 2];
_box addWeaponCargoGlobal ["vil_RPK74M_P29", 1];
_box addWeaponCargoGlobal ["M249_m145_EP1_DZE", 1];
_box addWeaponCargoGlobal ["m240_scoped_EP1_DZE", 1];
_box addWeaponCargoGlobal ["ksvk_DZE", 1];
_box addWeaponCargoGlobal ["vil_SV_98_SD", 2];
_box addWeaponCargoGlobal ["Sa58V_RCO_EP1", 2];
_box addWeaponCargoGlobal ["Sa58V_RCO_EP1", 2];
_box addWeaponCargoGlobal ["vil_AK_74m_EOT", 2];
_box addWeaponCargoGlobal ["vil_VAL_C", 2];
_box addWeaponCargoGlobal ["vil_PKP_EOT", 1];
_box addWeaponCargoGlobal ["RH_sc2shd", 2];
_box addWeaponCargoGlobal ["RH_ctar21glacog", 2];
_box addWeaponCargoGlobal ["VIL_M110", 1];
_box addWeaponCargoGlobal ["Mk_48_DZ", 1];
_box addWeaponCargoGlobal ["M14_EP1", 2];
_box addWeaponCargoGlobal ["SCAR_L_CQC_CCO_SD", 1];
_box addWeaponCargoGlobal ["SCAR_H_LNG_Sniper_SD", 1];
_box addWeaponCargoGlobal ["M60A4_EP1_DZE", 1];

// PISTOLS
_box addWeaponCargoGlobal ["M9SD", 2];
_box addWeaponCargoGlobal ["UZI_SD_EP1", 2];

// AMMUNITION
_box addMagazineCargoGlobal ["30Rnd_545x39_AK", 10];
_box addMagazineCargoGlobal ["vil_20Rnd_762x51_G3", 10];
_box addMagazineCargoGlobal ["FHQ_rem_30Rnd_680x43_ACR", 10];
_box addMagazineCargoGlobal ["RH_20Rnd_762x51_hk417", 10];
_box addMagazineCargoGlobal ["RH_20Rnd_762x51_SD_hk417", 10];
_box addMagazineCargoGlobal ["vil_10Rnd_762x54_SV", 10];
_box addMagazineCargoGlobal ["20Rnd_9x39_SP5_VSS", 10];
_box addMagazineCargoGlobal ["5Rnd_127x108_KSVK", 10];
_box addMagazineCargoGlobal ["200Rnd_556x45_M249", 10];
_box addMagazineCargoGlobal ["100Rnd_762x54_PK", 10];
_box addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag", 10];
_box addMagazineCargoGlobal ["20Rnd_762x51_DMR", 10];
_box addMagazineCargoGlobal ["20Rnd_762x51_DMR", 10];
_box addMagazineCargoGlobal ["5Rnd_86x70_L115A1", 10];
_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 15];
_box addMagazineCargoGlobal ["20Rnd_762x51_B_SCAR", 15];
_box addMagazineCargoGlobal ["100Rnd_762x51_M240", 10];
_box addMagazineCargoGlobal ["20Rnd_762x51_SB_SCAR", 10];
_box addMagazineCargoGlobal ["30Rnd_762x39_AK47", 15];

_box addMagazineCargoGlobal ["15Rnd_9x19_M9SD", 8];
_box addMagazineCargoGlobal ["30Rnd_9x19_UZI_SD", 8];

// ITEMS
_box addMagazineCargoGlobal ["ItemBriefcase100oz", 2];
_box addWeaponCargoGlobal ["Binocular_Vector", 2];
_box addWeaponCargoGlobal ["NVGoggles", 2];
_box addWeaponCargoGlobal ["ItemGPS", 2];

//BACKPACKS
_box addBackpackCargoGlobal ["DZ_LargeGunBag_EP1", 2];

// CLOTHING
_box addMagazineCargoGlobal ["Skin_Drake_Light_DZ", 2];
_box addMagazineCargoGlobal ["Skin_GUE_Commander_DZ", 2];
