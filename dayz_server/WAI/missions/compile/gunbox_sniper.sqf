//Sniper Gun Box

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["BAF_LRR_scoped", 1]; 
_box addWeaponCargoGlobal ["FHQ_MSR_SD_DESERT", 2];
_box addWeaponCargoGlobal ["vil_SVDK", 2];
_box addWeaponCargoGlobal ["FHQ_RSASS_TAN", 2];
_box addWeaponCargoGlobal ["vil_SR25", 2];
_box addWeaponCargoGlobal ["vil_SV_98_SD", 2];
_box addWeaponCargoGlobal ["FHQ_XM2010_DESERT", 2];
_box addWeaponCargoGlobal ["VSS_vintorez", 2];
_box addWeaponCargoGlobal ["SCAR_H_LNG_Sniper", 2];
_box addWeaponCargoGlobal ["DMR", 2];
_box addWeaponCargoGlobal ["M40A3", 2];
_box addWeaponCargoGlobal ["M24_des_EP1", 2];
_box addWeaponCargoGlobal ["SVD_CAMO", 2];
_box addWeaponCargoGlobal ["vil_M110", 2];

// PISTOLS
_box addWeaponCargoGlobal ["M9SD", 2];

// AMMUNITION
_box addMagazineCargoGlobal ["5Rnd_86x70_L115A1", 5];
_box addMagazineCargoGlobal ["20Rnd_762x51_DMR", 10];
_box addMagazineCargoGlobal ["5Rnd_762x51_M24", 10];
_box addMagazineCargoGlobal ["vil_10Rnd_762x54_SV", 10];
_box addMagazineCargoGlobal ["10Rnd_762x54_SVD", 10];
_box addMagazineCargoGlobal ["vil_10Rnd_SVDK", 10];

_box addMagazineCargoGlobal ["FHQ_rem_5Rnd_300Win_XM2010_NT", 5];
_box addMagazineCargoGlobal ["20Rnd_9x39_SP5_VSS", 5];
_box addMagazineCargoGlobal ["FHQ_rem_7Rnd_338Lapua_MSR_NT_SD", 5];
_box addMagazineCargoGlobal ["20Rnd_762x51_B_SCAR", 5];

_box addMagazineCargoGlobal ["15Rnd_9x19_M9SD", 8];

//TOOLS
_box addWeaponCargoGlobal ["Binocular_Vector", 2];

// CLOTHING
_box addMagazineCargoGlobal ["Skin_Sniper1_DZ", 2];
_box addMagazineCargoGlobal ["Skin_GUE_Soldier_Sniper_DZ", 2];
_box addMagazineCargoGlobal ["Skin_CZ_Soldier_Sniper_EP1_DZ", 2];