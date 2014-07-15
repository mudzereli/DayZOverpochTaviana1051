#include "CfgLoot.hpp"

class CfgBuildingLoot {
	class Default {
		zombieChance = 0.2;
		minRoaming = 0;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_suit1","z_suit2","z_worker1","z_worker2","z_worker3","z_villager1","z_villager2","z_villager3"};
		lootChance = 0;
		lootPos[] = {};

		lootPosSmall[] = {};
		lootPosZombie[] = {};
		
		itemType[] = {};

		itemChance[] = {};
		lootTypeSmall[] = {};
		itemChanceSmall[] = {};

		hangPos[] = {};
		vehPos[] = {};
	};
	
	class Castle: Default {
		lootChance = 0.2;
		lootPos[] = {};
		lootType[] = {
			{"ItemKnife","weapon",0.01},
			{"ItemMap","generic",0.01},
			{"ItemCompass","weapon",0.01},
			{"ItemFlashlight","weapon",0.01},
			{"WeaponHolder_ItemHatchet","object",0.01},
			{"WeaponHolder_ItemTent","object",0.01},
			{"PartWoodPile","magazine",0.04},
			{"","generic",0.40}
		};
	};
	class Residential: Default {
		zombieChance = 0.3;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemWatch","generic",0.04},
			{"ItemCompass","generic",0.03},
			{"ItemMap","weapon",0.02},
			{"ItemFlashlight","generic",0.01},
			{"ItemKnife","generic",0.04},
			{"ItemMatchbox_DZE","generic",0.01},
			{"","generic",0.32},
			{"backpacks","backpacks",0.04},
			{"tents","tents",0.01},
			{"","military",0.02},
			{"","trash",0.17},
			{"Binocular","weapon",0.02},
			{"PartPlywoodPack","magazine",0.02},
			{"clothes","clothes",0.01},
			{"specialclothes","specialclothes",0.01},
			{"WeaponHolder_MeleeCrowbar","object",0.03},
			{"pistols", "cfglootweapon", 0.04 },
			{"shotgunsingleshot", "cfglootweapon", 0.04 }
		};
		lootTypeSmall[] = {
			{ "ItemSodaMdew","magazine",0.01 },
			{ "ItemSodaRbull","magazine",0.01 },
			{ "ItemSodaOrangeSherbet","magazine",0.02 },
			{ "ItemWatch","weapon",0.05 },
			{ "ItemCompass","weapon",0.04 },
			{ "ItemMap","weapon",0.03 },
			{ "pistols","cfglootweapon",0.12 },
			{ "ItemFlashlight","weapon",0.02 },
			{ "ItemKnife","weapon",0.04 },
			{ "ItemMatchbox_DZE","weapon",0.03 },
			{ "","generic",0.38 },
			{ "","military",0.04 },
			{ "","trash",0.17 },
			{ "Binocular","weapon",0.02 },
			{ "clothes","single",0.01},
			{ "specialclothes","single",0.01 }
		};
	};
	class Office: Default {
		maxRoaming = 3;
		zombieClass[] = {"z_suit1","z_suit2"};
		zombieChance = 0.3;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemWatch","generic",0.04},
			{"ItemCompass","generic",0.03},
			{"ItemMap","weapon",0.02},
			{"ItemFlashlight","generic",0.01},
			{"ItemKnife","generic",0.04},
			{"ItemMatchbox_DZE","generic",0.01},
			{"","generic",0.31},
			{"backpacks","backpacks",0.04},
			{"tents","tents",0.01},
			{"","military",0.02},
			{"","trash",0.21},
			{"Binocular","weapon",0.02},
			{"PartPlywoodPack","magazine",0.02},
			{"clothes","clothes",0.01},
			{"specialclothes","specialclothes",0.01},
			{"WeaponHolder_MeleeCrowbar","object",0.03},
			{"ItemBriefcaseEmpty","magazine",0.01},
			{ "shotgunsingleshot", "cfglootweapon", 0.05}
		};
		lootTypeSmall[] = {
			{ "ItemSodaMdew","magazine",0.01 },
			{ "ItemSodaRbull","magazine",0.01 },
			{ "ItemSodaOrangeSherbet","magazine",0.02 },
			{ "ItemWatch","weapon",0.05 },
			{ "ItemCompass","weapon",0.04 },
			{ "ItemMap","weapon",0.03 },
			{ "pistols","cfglootweapon",0.15 },
			{ "ItemFlashlight","weapon",0.02 },
			{ "ItemKnife","weapon",0.05 },
			{ "ItemMatchbox_DZE","weapon",0.03 },
			{ "","generic",0.31 },			
			{ "","military",0.04 },
			{ "","trash",0.03 },
			{ "Binocular","weapon",0.02 },
			{ "clothes","single",0.16 },
			{ "specialclothes","single",0.02 },
			{ "ItemDocument","magazine",0.01 }
		};
	};
	class Industrial: Default {
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemGenerator","magazine",0.01},
			{"ItemFuelBarrelEmpty","magazine",0.01},
			{"","generic",0.17},
			{"","trash",0.25},
			{"","military",0.04},
			{"PartGeneric","magazine",0.04},
			{"PartWheel","magazine",0.05},
			{"PartFueltank","magazine",0.02},
			{"PartEngine","magazine",0.02},
			{"PartGlass","magazine",0.04},
			{"PartVRotor","magazine",0.01},
			{"ItemJerrycan","magazine",0.04},
			{"WeaponHolder_ItemHatchet_DZE","object",0.07},
			{"ItemKnife","military",0.07},
			{"ItemToolbox","weapon",0.06},
			{"ItemWire","magazine",0.01},
			{"ItemTankTrap","magazine",0.04},
			{"ItemKeyKit","weapon",0.01},
			{"CinderBlocks","magazine",0.03},
			{"MortarBucket","magazine",0.01}
		};
		lootTypeSmall[] = {
			{ "","generic",0.5 },
			{ "","trash",0.28 },
			{ "","military",0.14 },
			{ "ItemKnife","weapon",0.07 },
			{ "ItemKeyKit","weapon",0.01 }
		};
	};
	class IndustrialFuel: Default {
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemGenerator","magazine",0.01},
			{"fuel_pump_kit","magazine",0.01},
			{"","generic",0.18},
			{"","trash",0.28},
			{"","military",0.04},
			{"PartGeneric","magazine",0.04},
			{"PartWheel","magazine",0.05},
			{"PartFueltank","magazine",0.02},
			{"PartEngine","magazine",0.02},
			{"PartGlass","magazine",0.04},
			{"PartVRotor","magazine",0.01},
			{"ItemJerrycan","magazine",0.04},
			{"WeaponHolder_ItemHatchet_DZE","object",0.07},
			{"ItemKnife","military",0.07},
			{"ItemToolbox","weapon",0.06},
			{"ItemWire","magazine",0.01},
			{"ItemTankTrap","magazine",0.04},
			{"ItemKeyKit","weapon",0.01}
		};
		lootTypeSmall[] = {
			{ "","generic",0.5 },
			{ "","trash",0.28 },
			{ "","military",0.14 },
			{ "ItemKnife","weapon",0.07 },
			{ "ItemKeyKit","weapon",0.01 }
		};
	};
	class Farm: Default {
		zombieChance = 0.3;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"ItemJerrycan","magazine",0.05},
			{"","generic",0.3},
			{"","trash",0.11},
			{"PartPlankPack","magazine",0.06},
			{"WeaponHolder_ItemHatchet_DZE","object",0.05},
			{"ItemFuelBarrelEmpty","magazine",0.01},
			{"WeaponHolder_ItemMachete","object",0.03},
			{"ItemFishingPole","weapon",0.02},
			{"ItemLightBulb","magazine",0.02},
			{"ItemSledgeHandle","magazine",0.02},
			{ "farmweapons", "cfglootweapon", 0.15}
		};
		lootTypeSmall[] = {
			{ "","generic", 0.79},
			{ "","trash",0.14 },
			{ "","military",0.05},
			{ "ItemLightBulb","magazine",0.01},
			{ "ItemSledgeHead","magazine",0.01}
		};
	};
	class Supermarket: Default {
		lootChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","zZombie_Base","z_teacher","z_suit1","z_suit2"};
		lootType[] = {
			{"ItemSodaMdew","magazine",0.01},
			{"ItemSodaRbull","magazine",0.01},
			{"ItemSodaOrangeSherbet","magazine",0.03},
			{"ItemWatch","generic",0.07},
			{"ItemCompass","generic",0.02},
			{"ItemMap","weapon",0.04},
			{"ItemFlashlight","generic",0.01},
			{"ItemKnife","generic",0.02},
			{"ItemMatchbox_DZE","generic",0.04},
			{"","generic",0.04},
			{"backpacks","backpacks",0.07},
			{"tents","tents",0.01},
			{"","food",0.3},
			{"","trash",0.17},
			{"Binocular","weapon",0.05},
			{"PartPlywoodPack","magazine",0.02},
			{ "pistols", "cfglootweapon", 0.04},
			{ "shotgunsingleshot", "cfglootweapon", 0.04}
		};
		lootTypeSmall[] = {
			{ "ItemSodaMdew","magazine",0.01 },
			{ "ItemSodaRbull","magazine",0.01 },
			{ "ItemSodaOrangeSherbet","magazine",0.03 },
			{ "ItemWatch","weapon",0.07 },
			{ "ItemCompass","weapon",0.03 },
			{ "ItemMap","weapon",0.05 },
			{ "pistols","cfglootweapon",0.08 },
			{ "ItemFlashlight","weapon",0.01 },
			{ "ItemKnife","weapon",0.02 },
			{ "ItemMatchbox_DZE","weapon",0.04 },
			{ "","generic",0.21 },
			{ "","food",0.24 },
			{ "","trash",0.16 },
			{ "Binocular","weapon",0.02 },
			{ "ItemMixOil", "magazine",0.02}
		};
	};
	class HeliCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.10 },
			{ "submachinegun", "cfglootweapon", 0.04 },
			{ "sniperrifles", "cfglootweapon", 0.07 },
			{ "machineguns", "cfglootweapon", 0.06 },
			{"","military",0.3},
			{"","medical",0.18},
			{"MAAWS","weapon",0.02},
			{"MedBox0","object",0.05},
			{"NVGoggles","weapon",0.01},
			{"AmmoBoxSmall_556","object",0.03},
			{"AmmoBoxSmall_762","object",0.03},
			{"militaryclothes","militaryclothes",0.05},
			{"militaryammo","militaryammo",0.06}
		};
	};
	class HeliCrash_No50s: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.10 },
			{ "submachinegun", "cfglootweapon", 0.04 },
			{ "sniperrifles", "cfglootweapon", 0.07 },
			{ "machineguns", "cfglootweapon", 0.06 },
			{ "", "military", 0.3 },
			{ "", "medical", 0.18 },
			{ "MAAWS", "weapon", 0.02 },
			{ "MedBox0", "object", 0.05 },
			{ "NVGoggles", "weapon", 0.01 },
			{ "AmmoBoxSmall_556", "object", 0.03 },
			{ "AmmoBoxSmall_762", "object", 0.03 },
			{ "militaryclothes", "militaryclothes", 0.05 },
			{ "militaryammo", "militaryammo", 0.06 }
		};
	};
	class Hospital: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_doctor","z_doctor","z_doctor"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{"","trash",0.1},
			{"","hospital",0.7},
			{"MedBox0","object",0.2}
		};
		lootTypeSmall[] = {
			{ "","trash",0.1 },
			{ "","hospital",0.9 }
		};
	};
	class Military: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "pistols", "cfglootweapon", 0.04},
			{ "assaultrifles", "cfglootweapon", 0.13 },
			{ "sniperrifles", "cfglootweapon", 0.04 },
			{ "shotgunsingleshot", "cfglootweapon", 0.06 },
			{ "submachinegun", "cfglootweapon", 0.07 },
			{"Binocular","weapon",0.03},
			{"ItemFlashlightRed","military",0.04},
			{"ItemKnife","military",0.01},
			{"ItemGPS","weapon",0.01},
			{"ItemMap","military",0.02},
			{"militarybackpacks","militarybackpacks",0.05},
			{"","medical",0.03},
			{"","generic",0.1},
			{"","military",0.3},
			{"ItemEtool","weapon",0.02},
			{"ItemSandbag","magazine",0.02},
			{ "machineguns", "cfglootweapon", 0.03 }
		};
		lootTypeSmall[] = {
			{ "pistols", "cfglootweapon", 0.14 },
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.22 },
			{ "", "military", 0.35 },
			{ "ItemEtool", "weapon", 0.03 }
		};
	};
	class MilitaryIndustrial: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman","z_soldier","z_soldier_heavy","z_policeman","z_worker1","z_worker2","z_worker3"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "pistols", "cfglootweapon", 0.02 },
			{ "assaultrifles", "cfglootweapon", 0.05 },
			{ "PartGeneric", "magazine", 0.03 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "shotgunsingleshot", "cfglootweapon", 0.05 },
			{ "ItemGenerator", "magazine", 0.01 },
			{ "submachinegun", "cfglootweapon", 0.05 },
			{"PartGeneric","magazine",0.03},
			{"ItemGenerator","magazine",0.01},
			{"PartWheel","magazine",0.02},
			{"Binocular","weapon",0.01},
			{"ItemFlashlightRed","military",0.03},
			{"ItemKnife","military",0.04},
			{"ItemGPS","weapon",0.01},
			{"PartVRotor","magazine",0.01},
			{"militarybackpacks","militarybackpacks",0.03},
			{"","medical",0.05},
			{"","generic",0.35},
			{"","military",0.07},
			{"ItemEtool","weapon",0.03},
			{"ItemSandbag","magazine",0.02},
			{"ItemFuelBarrelEmpty","magazine",0.03},
			{"fuel_pump_kit","magazine",0.01},
			{ "machineguns", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "pistols", "cfglootweapon", 0.14 },
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.22 },
			{ "", "military", 0.35 },
			{ "ItemEtool", "weapon", 0.03 }
		};
	};
	class IndustrialMilitary: Default {
		zombieChance = 0.4;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman","z_soldier","z_soldier_heavy","z_policeman","z_worker1","z_worker2","z_worker3"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "pistols", "cfglootweapon", 0.02 },
			{ "assaultrifles", "cfglootweapon", 0.05 },
			{ "PartGeneric", "magazine", 0.03 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "shotgunsingleshot", "cfglootweapon", 0.05 },
			{ "ItemGenerator", "magazine", 0.01 },
			{ "submachinegun", "cfglootweapon", 0.05 },
			{"PartGeneric","magazine",0.03},
			{"ItemGenerator","magazine",0.01},
			{"PartWheel","magazine",0.02},
			{"Binocular","weapon",0.01},
			{"ItemFlashlightRed","military",0.03},
			{"ItemKnife","military",0.04},
			{"ItemGPS","weapon",0.01},
			{"PartVRotor","magazine",0.01},
			{"PartFueltank","magazine",0.03},
			{"PartEngine","magazine",0.04},
			{"PartGlass","magazine",0.05},
			{"militarybackpacks","militarybackpacks",0.03},
			{"","medical",0.05},
			{"","generic",0.25},
			{"","military",0.07},
			{"ItemEtool","weapon",0.03},
			{"ItemSandbag","magazine",0.02},
			{"ItemFuelBarrelEmpty","magazine",0.03},
			{"fuel_pump_kit","magazine",0.01},
			{"machineguns","cfglootweapon",0.01}
		};
		lootTypeSmall[] = {
			{ "pistols", "cfglootweapon", 0.14 },
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.22 },
			{"","military",0.35},
			{"ItemEtool","weapon",0.03}
		};
	};
	class MilitarySpecial: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier_heavy"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.1 },
			{ "machineguns", "cfglootweapon", 0.04 },
			{ "pistols", "cfglootweapon", 0.08 },
			{ "sniperrifles", "cfglootweapon", 0.03 },
			{ "militaryshotguns", "cfglootweapon", 0.05 },
			{ "submachinegun", "cfglootweapon", 0.06 },
			{"AmmoBoxSmall_556","object",0.01},
			{"AmmoBoxSmall_762","object",0.02},
			{"Binocular","weapon",0.01},
			{"ItemFlashlightRed","military",0.02},
			{"ItemKnife","military",0.01},
			{"ItemGPS","weapon",0.01},
			{"ItemMap","military",0.01},
			{"Binocular_Vector","military",0.01},
			{"militarybackpacks","militarybackpacks",0.04},
			{"","medical",0.08},
			{"","generic",0.3},
			{"","military",0.01},
			{"machinegunammo","machinegunammo",0.05},
			{"militaryclothes","militaryclothes",0.05},
			{"NVGoggles","weapon",0.01}
		};
		lootTypeSmall[] = {
			{ "pistols","cfglootweapon",0.10 },
			{ "AmmoBoxSmall_556","object",0.02 },
			{ "AmmoBoxSmall_762","object",0.02 },
			{ "Binocular","weapon",0.02 },
			{ "ItemFlashlightRed","military",0.01 },
			{ "ItemKnife","military",0.02 },
			{ "ItemGPS","weapon",0.02 },
			{ "ItemMap","weapon",0.01 },
			{ "Binocular_Vector","weapon",0.03},
			{ "","medical",0.08},
			{ "","generic",0.15},
			{ "","military",0.33 },
			{ "5Rnd_86x70_L115A1","magazine",0.03},
			{ "10Rnd_127x99_m107","magazine",0.02},
			{ "machinegunammoexpl","single",0.02 },
			{ "militaryclothes","single",0.05 },
			{ "NVGoggles","weapon",0.04 },
			{ "100Rnd_762x54_PK","magazine",0.02 }
		};
	};
	class Hunting: Default {
		zombieChance = 0.4;
		minRoaming = 1;
		maxRoaming = 3;
		zombieClass[] = {"z_hunter","z_hunter","z_hunter"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{"ItemMap","weapon",0.02},
			{"ItemFlashlight","generic",0.01},
			{"ItemKnife","generic",0.01},
			{"ItemMatchbox_DZE","generic",0.03},
			{ "farmweapons", "cfglootweapon", 0.03 },
			{"","military",0.38},
			{"WeaponHolder_ItemMachete","object",0.02},
			{"","hunter",0.5}
		};
		lootTypeSmall[] =	{
			{"ItemMap","weapon",0.02},
			{"ItemFlashlight","weapon",0.02},
			{"ItemKnife","weapon",0.02},
			{"ItemMatchbox_DZE","weapon",0.04},
			{"","military",0.4},
			{"","hunter",0.5}
		};
	};
	class DynamicDebris: Default
	{
		lootChance = 0.4;
		minRoaming = 0;
		maxRoaming = 2;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","zZombie_Base","z_teacher","z_suit1","z_suit2"};
		lootType[] = {
			{ "ItemWatch", "generic", 0.19 },
			{ "ItemCompass", "generic", 0.01 },
			{ "ItemMap", "weapon", 0.06 },
			{ "Makarov", "weapon", 0.02 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "generic", 0.06 },
			{ "ItemKnife", "generic", 0.06 },
			{ "ItemMatchbox_DZE", "generic", 0.06 },
			{ "ItemToolbox", "weapon", 0.02 },
			{ "", "generic", 0.17 },
			{ "", "food", 0.06 },
			{ "PartGeneric", "magazine", 0.07 },
			{ "PartWheel", "magazine", 0.06 },
			{ "PartFueltank", "magazine", 0.03 },
			{ "PartEngine", "magazine", 0.01 },
			{ "PartGlass", "magazine", 0.08 },
			{ "WeaponHolder_ItemJerrycan", "object", 0.03 }
		};
	};
	class DynamicDebrisMilitary: Default
	{
		lootChance = 0.4;
		minRoaming = 0;
		maxRoaming = 2;
		zombieChance = 0.3;
		zombieClass[] = {"z_soldier_pilot","z_soldier_heavy"};
		lootType[] = {
			{ "ItemEtool", "weapon", 0.05 },
			{ "ItemSandbag", "magazine", 0.1 },
			{ "", "military", 0.08 },
			{ "ItemWatch", "generic", 0.1 },
			{ "ItemCompass", "generic", 0.02 },
			{ "ItemMap", "weapon", 0.05 },
			{ "MakarovSD", "weapon", 0.01 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "generic", 0.01 },
			{ "ItemKnife", "generic", 0.05 },
			{ "ItemMatchbox_DZE", "generic", 0.05 },
			{ "ItemToolbox", "weapon", 0.02 },
			{ "", "generic", 0.15 },
			{ "", "food", 0.05 },
			{ "PartGeneric", "magazine", 0.06 },
			{ "PartWheel", "magazine", 0.05 },
			{ "PartFueltank", "magazine", 0.03 },
			{ "PartEngine", "magazine", 0.02 },
			{ "PartGlass", "magazine", 0.03 },
			{ "PartVRotor", "magazine", 0.02 },
			{ "WeaponHolder_ItemJerrycan", "object", 0.03 }
		};
	};
	class SupplyDrop: Default {
		zombieChance = 1;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3","z_doctor","z_soldier_pilot","z_soldier_heavy"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{ "PartPlywoodPack", "magazine", 0.1 },
			{ "PartPlankPack", "magazine", 0.2 },
			{ "CinderBlocks", "magazine", 0.1 },
			{ "MortarBucket", "magazine", 0.1 },
			{ "bulk_PartGeneric", "magazine", 0.2 },
			{ "bulk_ItemSandbag", "magazine", 0.1 },
			{ "bulk_ItemTankTrap", "magazine", 0.1 },
			{ "ItemSledge", "weapon", 0.1 }
		};
	};
	class MassGrave: Default {
		zombieChance = 1;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3","z_doctor","z_soldier_pilot","z_soldier_heavy"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{ "M16A2", "weapon", 0.03 },
			{ "M16A2GL", "weapon", 0.01 },
			{ "M249_EP1_DZ", "weapon", 0.01 },
			{ "M9SD", "weapon", 0.02 },
			{ "Pecheneg_DZ", "weapon", 0.02 },
			{ "PK_DZ", "weapon", 0.01 },
			{ "AK_74", "weapon", 0.02 },
			{ "M4A1_Aim", "weapon", 0.01 },
			{ "AKS_74_kobra", "weapon", 0.01 },
			{ "AKS_74_U", "weapon", 0.02 },
			{ "AK_47_M", "weapon", 0.02 },
			{ "M24", "weapon", 0.01 },
			{ "SVD_CAMO", "weapon", 0.01 },
			{ "M1014", "weapon", 0.02 },
			{ "BAF_LRR_scoped", "weapon", 0.01 },
			{ "M4SPR", "weapon", 0.01 },
			{ "M4A1", "weapon", 0.01 },
			{ "M14_EP1", "weapon", 0.02 },
			{ "UZI_EP1", "weapon", 0.03 },
			{ "Remington870_lamp", "weapon", 0.01 },
			{ "glock17_EP1", "weapon", 0.02 },
			{ "M240_DZ", "weapon", 0.02 },
			{ "M4A1_AIM_SD_camo", "weapon", 0.01 },
			{ "M16A4_ACG", "weapon", 0.01 },
			{ "M4A1_HWS_GL_camo", "weapon", 0.01 },
			{ "Mk_48_DZ", "weapon", 0.01 },
			{ "M4A3_CCO_EP1", "weapon", 0.01 },
			{ "AmmoBoxSmall_556", "object", 0.03 },
			{ "AmmoBoxSmall_762", "object", 0.03 },
			{ "Binocular", "weapon", 0.01 },
			{ "ItemFlashlightRed", "military", 0.02 },
			{ "ItemKnife", "military", 0.01 },
			{ "ItemGPS", "weapon", 0.01 },
			{ "ItemMap", "military", 0.01 },
			{ "Binocular_Vector", "military", 0.01 },
			{ "DZ_ALICE_Pack_EP1", "object", 0.03 },
			{ "DZ_TK_Assault_Pack_EP1", "object", 0.02 },
			{ "DZ_British_ACU", "object", 0.02 },
			{ "DZ_CivilBackpack_EP1", "object", 0.02 },
			{ "DZ_Backpack_EP1", "object", 0.01 },
			{ "DZ_LargeGunBag_EP1", "object", 0.01 },
			{ "", "medical", 0.05 },
			{ "", "generic", 0.05 },
			{ "", "military", 0.13 },
			{ "PipeBomb", "magazine", 0.01 },
			{ "Sa58V_RCO_EP1", "weapon", 0.01 },
			{ "Sa58V_CCO_EP1", "weapon", 0.01 },
			{ "G36_C_SD_camo", "weapon", 0.01 },
			{ "M40A3", "weapon", 0.01 },
			{ "100Rnd_762x54_PK", "magazine", 0.01 },
			{ "", "militaryclothes", 0.05 },
			{ "WeaponHolder_ItemMachete", "object", 0.02 },
			{ "SCAR_H_LNG_Sniper_SD", "weapon", 0.01 },
			{ "2000Rnd_762x51_M134", "magazine", 0.01 },
			{ "KSVK_DZE", "weapon", 0.01 },
			{ "m240_scoped_EP1_DZE", "weapon", 0.01 }
		};
	};
	
#include "CfgBuildingPos.hpp"

	class Land_MBG_GER_RHUS_4 : Residential {
		zombieChance = 0.2;
		lootPos[] = {
			{1.48242, 2.94995, -2.86569}, 
			{3.06348, 4.1582, -2.9157}, 
			{-3.42676, 2.75391, -2.4157}, 
			{1.38086, -3.94336, -2.36569}, 
			{3.60645, -1.51001, -2.51569}, 
			{-3.38477, -2.74951, -3.36569}, 
			{-1.16504, 4.1582, -0.465683}, 
			{3.46973, 1.44287, -0.465683}, 
			{3.46875, 0.478027, -0.465683}, 
			{1.0332, -4.48242, -0.465683}, 
			{-3.27734, -2.83789, -0.465683} 
		};
		lootPosZombie[] = {
			{2.15918, 5.73291, -3.76373}, 
			{-0.509766, -2.11768, -3.36569}, 
			{2.39648, -5.71338, -3.86574} 
		};
	};
	class Land_build5 : Residential {
		lootPos[] = {
			{-4.43384, -3.91895, -2.63174}, 
			{0.712891, -3.93848, -2.63174}, 
			{4.61523, 1.90918, -2.63174}, 
			{2.2312, -3.87012, -2.63174} 
		};
	};
	class Land_build2 : Residential {
		lootPos[] = {
			{3.63599, -6.05859, -4.93416}, 
			{5.09741, 1.81348, -4.88693}, 
			{-1.91016, 0.357422, -4.48692}, 
			{1.94507, 0.337891, -4.53691}, 
			{-6.98242, -5.40625, -4.28452}, 
			{-3.57275, 1.89063, -4.88681}, 
			{-7.60327, 1.92676, -1.57527}, 
			{-3.59155, -6.12891, -1.62527}, 
			{2.38135, 5.81738, -1.57527}, 
			{7.39673, -6.00977, -1.57527}, 
			{7.66113, 1.90918, -1.62527}, 
			{2.32056, 1.71484, -1.62527}, 
			{-3.38208, -1.24121, -4.03601} 
		};
	};
	class Land_Bet_haus_5_bs_b : Residential {
		lootPos[] = {
			{0.224609, 2.91943, -4.52586}, 
			{-2.79492, 3.22949, -1.46469}, 
			{2.61523, -1.34058, -0.614716}, 
			{-0.632813, 1.63501, -5.27586} 
		};
	};
	class Land_Bet_haus_2_fw_e : Residential {
		lootPos[] = {
			{2.8291, 1.03491, -0.945053}, 
			{-2.95508, 1.05908, -0.945526}, 
			{-2.49316, 0.814941, -4.34476} 
		};
	};
	class Land_Bet_haus_4_fw_a : Residential {
		lootPos[] = {
			{-2.72803, 2.4834, -2.63354}, 
			{2.72021, 3.09668, -4.73357}, 
			{-2.38354, -1.85449, -1.16264}, 
			{-2.74487, 0.0292969, 2.3932}, 
			{2.88232, 0.936523, 1.5932} 
		};
	};
	class Land_Bet_haus_4_bs_a2: Residential
	{
		lootPos[] = {{ -1.20508,0.995117,-4.73357 },{ -0.968018,-1.08594,-4.73357 },{ -1.4729,-1.72754,-1.16264 },{ -0.221924,-1.48828,-1.5932 }};
	};
	class Land_Bet_haus_4_fw_b: Residential
	{
		lootPos[] = {{ 2.07642,1.55566,-4.73358 },{ -1.27588,-1.91016,-4.73358 },{ -0.129395,-1.65527,-1.16264 },{ 1.31079,1.69824,-1.16264 },{ 1.36938,1.26563,1.5932 }};
	};
	class Land_Bet_haus_4_bs_b: Residential
	{
		lootPos[] = {{ 0.113525,2.1582,-1.16264 },{ 1.44067,1.52637,1.5932 },{ -1.52905,-1.43945,1.5932 }};
	};
	class Land_Bet_haus_5_bs_a: Residential
	{
		lootPos[] = {{ -1.78174,1.53027,-2.86942 },{ 2.41333,1.83301,-2.86942 }};
	};
	class Land_MBG_GER_RHUS_5: Residential
	{
		lootPos[] = {{ 1.02637,4.22412,-3.36559 },{ -2.26465,-0.113037,-3.36569 },{ -2.29785,-3.79395,-3.36569 },{ 2.35645,-2.69824,-0.465683 },{ 2.3623,3.05469,-0.465683 },{ -1.87695,2.13574,-0.465683 }};
	};
	class Land_MBG_GER_HUS_2 : Residential {
		lootPos[] = {
			{-5.58545, 7.28223, -3.11288}, 
			{-5.72217, 2.13184, -3.11288}, 
			{-5.54395, -1.48438, -3.11288}, 
			{1.95801, -6.60645, -1.66289}, 
			{2.73926, 4.52832, -2.31288}, 
			{5.11475, 2.08691, -2.26288}, 
			{-0.0527344, 7.06055, -2.11288}, 
			{5.58008, -7.27246, -2.96289}, 
			{3.20947, -6.19043, -0.112885}, 
			{-3.07324, -2.56543, 0.387115}, 
			{-2.01074, -6.89648, -0.112885}, 
			{-2.57324, 7.37402, 0.437119}, 
			{-5.62598, 2.13281, -0.112885}, 
			{3.37256, 4.18359, 0.387115}, 
			{-0.496582, 7.30176, -0.112885}, 
			{-5.73682, 1.20898, -0.112885} 
		};
	};
	class Land_MBG_GER_SUPERMARKET_3 : Supermarket {
		lootPos[] = {
			{10.6057, -12.8652, -3.24568}, 
			{10.6379, 11.5, -3.24568}, 
			{6.15674, 4.34375, -2.64568}, 
			{-2.97998, -9.08594, -3.14568}, 
			{-9.83252, -12.8633, -3.24568}, 
			{-8.63599, -9.23047, -3.19568}, 
			{-6.96411, -7.60547, -3.24568}, 
			{-5.17773, -1.1416, -3.24568}, 
			{-2.37354, -1.05957, -3.24568}, 
			{2.41846, -1.00684, -3.24568}, 
			{4.34155, 4.66113, -3.24568}, 
			{-4.93188, 2.4541, -3.24568}, 
			{-9, 7.56641, -3.24568}, 
			{-5.77002, 9.25391, -2.59569}, 
			{-0.598633, 7.71289, -2.64568}, 
			{5.20215, 11.4004, -2.64568}, 
			{-4.63672, 9.49414, -2.64568}, 
			{-1.20361, 13.0977, -3.24568}, 
			{1.30542, 16.4131, -3.24568}, 
			{5.53394, 12.9023, -3.24568}, 
			{9.39844, 16.5801, -3.24568}, 
			{9.73926, 13.7266, -3.24568}, 
			{-8.77417, 0.785156, -3.24568}, 
			{-4.06519, -4.82813, -3.24568}, 
			{-2.73828, -12.498, -3.24568}, 
			{3.82227, -8.48926, -3.24568} 
		};
	};
	class Land_MBG_GER_PUB_2: Residential
	{
		lootPos[] = {{ 7.1499,-3.82813,-3.56017 },{ 4.38306,1.96777,-3.53085 },{ 1.38916,-0.146484,-3.53085 },{ -4.22998,-0.65332,-3.53085 },{ -6.2876,-4.40234,-3.53085 },{ -3.02856,-4.6709,-3.53085 },{ 5.08154,-4.91504,-3.53085 },{ 4.70215,3.10742,-0.733139 },{ 5.46021,1.42188,-0.630844 },{ 5.74634,-1.63477,-0.630844 },{ 2.70239,-0.567383,-0.630844 },{ 2.3811,-4.92285,-0.630844 },{ -1.55713,-4.85742,-0.630844 },{ -5.68286,-4.5791,-0.630844 },{ 4.66333,5.24902,-0.630844 },{ 1.90747,7.16309,-0.630844 }};
	};
	class MBG_Police_Station_EU: Military {
		lootChance = 0.3;
		lootPos[] = {{1.51685,5.53186,-1.49856},{-1.86304,3.56152,-1.49856},{6.15845,6.00208,-1.49856},{-1.27002,7.04468,1.80144},{1.70874,-1.98877,1.80144},{8.92798,6.20569,1.80144},{-1.71167,-5.23706,1.80144},{-4.25537,-1.6947,1.80144},{-5.62292,-4.64026,-1.49856}};
		lootPosZombie[] = {{1.51685,5.53186,-1.49856},{-1.86304,3.56152,-1.49856},{6.15845,6.00208,-1.49856},{-1.27002,7.04468,1.80144},{1.70874,-1.98877,1.80144},{8.92798,6.20569,1.80144},{-1.71167,-5.23706,1.80144},{-4.25537,-1.6947,1.80144},{-5.62292,-4.64026,-1.49856}};
	};
	class Land_MBG_GER_RHUS_2: Residential
	{
		lootPos[] = {{ 2.6145,-3.36914,-3.36569 },{ 1.99365,-0.302734,-3.36569 },{ -2.01758,-0.208008,-3.36569 },{ -0.538086,3.88867,-3.36569 },{ 2.80811,2.23633,-3.36569 },{ -0.656494,0.271484,-0.465698 },{ -1.73999,-3.66699,-0.465683 }};
	};
	class Land_MBG_GER_RHUS_3: Residential
	{
		lootPos[] = {{ 2.6145,-3.36914,-3.36569 },{ 1.99365,-0.302734,-3.36569 },{ -2.01758,-0.208008,-3.36569 },{ -0.538086,3.88867,-3.36569 },{ 2.80811,2.23633,-3.36569 },{ -0.656494,0.271484,-0.465698 },{ -1.73999,-3.66699,-0.465683 }};
	};
	class Land_MBG_GER_HUS_1: Residential
	{
		lootPos[] = {{ -2.60254,-6.22339,-3.11288 },{ 1.2863,-6.3479,-3.11288 },{ 5.83301,0.563477,-3.11288 },{ 6.4248,0.344971,-0.112885 },{ -3.92285,0.278809,-0.112885 },{ 4.20313,-2.43945,-0.112885 },{ 5.72168,-4.62769,-0.112885 },{ 1.06445,-3.92847,0.513565 },{ -3.68652,3.45801,-0.112885 }};
	};

	class Land_smd_ammostore2_open: MilitarySpecial {
		lootPos[] = {
			{2.32324, 3.56213, -1.98814},
			{0.478516, 5.21533, -1.98814},
			{-2.1748, 4.7135, -1.68814}
		};
		lootPosZombie[] = {{0.00878906, -2.6001, -2.88206}};
	};
	class Land_smd_fuelstation_army: IndustrialFuel {
		lootPos[] = {
			{5.35742, -0.0854492, -2.28509},
			{-5.6543, 5.2168, -2.28509}
		};
	};
	class Land_smd_dum_olezlina_open: Residential {
		lootPos[] = {
			{-7.11621, 3.34131, -2.8848},
			{-4.04492, -3.46143, -3.8348},
			{-0.479492, -3.27441, -3.8348},
			{0.732422, -3.22388, -3.8348},
			{7.52441, -3.4646, -3.83481},
			{6.87402, 3.16968, -3.8348},
			{7.39355, -2.84497, 0.26593},
			{0.832031, -3.29199, -0.434067},
			{0.844727, 1.38892, -0.434067},
			{-6.35742, -2.81445, -0.434067},
			{-4.03027, 1.60107, -0.434067},
			{-1.84375, -3.04736, -0.436424},
			{-2.97949, 3.24463, -3.8348}
		};
	};
	class Land_smd_dum_mesto_in_open: Residential {
		lootPos[] = {
			{-5.32031, -3.25903, -3.96844},
			{-3.80859, 0.807617, -3.96844},
			{4.89258, -3.01001, -3.41931},
			{5, 4.44434, -3.96931},
			{2.2373, 0.507324, -3.96931},
			{1.21094, 4.39941, -2.46075},
			{6.16113, -3.69434, 0.213913},
			{3.80371, 4.771, -0.986084},
			{1.28418, 0.909668, -0.036087},
			{-5.84473, -4.84497, -0.817612},
			{-0.996094, 4.57031, -0.980965},
			{-6.18164, 0.42041, 0.219032},
			{-6.07617, -3.63818, -0.980965},
			{0.453125, -3.97168, -0.986084}
		};
	};
	class Land_smd_budova3_open: Residential {
		lootPos[] = {
			{-1.6731, -0.0371094, -1.1634},
			{2.73413, -2.83691, -1.90865},
			{-3.08691, 2.49512, -1.91362}
		};
	};
	class Land_smd_bouda_plech_open: Industrial {
		lootPos[] = {
			{0.262451, 1.64453, -1.04471},
			{0.462891, -1.70117, -1.03748}
		};
	};
	class Land_smd_sara_stodola2: Industrial {
		lootPos[] = {{5.01367, 3.33118, -2.19523}, {2.51758, 1.05737, -2.19523}, {-1.30957, -1.02954, -2.19523}, {-4.24414, 4.0238, -2.19523}, {5.16211, -0.661621, -2.19523}};
	};
	class Land_sara_domek_podhradi_1: Residential {
		lootPos[] = {
			{-5.18237, 3.62109, -2.75808},
			{-5.18726, -0.751953, -2.75808},
			{-5.13086, -3.82715, -2.75808},
			{1.43921, -3.7168, -2.75808}
		};
	};
	class Land_smd_army_hut_int: Military {
		lootPos[] = {
			{-1.31726, 0.819824, -0.0588951},
			{2.47717, -0.00244141, -1.33056},
			{2.54358, -2.67383, -1.33056},
			{0.11792, -4.72656, -0.580559},
			{-1.99268, -2.08838, -1.34386}
		};
	};
};
