//Contruction Supply Box

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];

PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// CONSTRUCTION MATERIALS
_box addMagazineCargoGlobal ["CinderBlocks", 50];
_box addMagazineCargoGlobal ["MortarBucket", 25];
_box addMagazineCargoGlobal ["metal_floor_kit", 5];
_box addMagazineCargoGlobal ["Cinder_Wall_kit", 5];
_box addMagazineCargoGlobal ["ItemSandbagExLarge5X", 5];
_box addMagazineCargoGlobal ["PartPlywoodPack", 10];
_box addMagazineCargoGlobal ["cinder_garage_kit", 2];
_box addMagazineCargoGlobal ["PartGeneric", 10];
_box addMagazineCargoGlobal ["ItemSandbag", 15];
_box addMagazineCargoGlobal ["ItemTankTrap", 15];
_box addMagazineCargoGlobal ["ItemComboLock", 2];
_box addMagazineCargoGlobal ["30m_plot_kit", 1];
_box addMagazineCargoGlobal ["ItemVault", 1];

// TOOLS
_box addWeaponCargoGlobal ["ItemToolbox", 2];
_box addWeaponCargoGlobal ["ItemEtool", 2];
_box addWeaponCargoGlobal ["ItemCrowbar", 2];
_box addWeaponCargoGlobal ["ItemKnife", 2];