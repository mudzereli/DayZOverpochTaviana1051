class CfgBuildingLoot {

    class Default {
        zombieChance = 0.200000;
        minRoaming = 0;
        maxRoaming = 2;
        zombieClass = {"zZombie_Base", "z_hunter", "z_teacher", "z_suit1", "z_suit2", "z_worker1", "z_worker2", "z_worker3", "z_villager1", "z_villager2", "z_villager3"};
        lootChance = 0;
        lootPos = {};
        lootPosSmall = {};
        lootPosZombie = {};
        itemType = {};
        itemChance = {};
        lootTypeSmall = {};
        itemChanceSmall = {};
        hangPos = {};
        vehPos = {};
    };

    class Castle: Default {
        lootChance = 0.400000;
        lootPos = {};
        lootType = {{"ItemKnife", "weapon", 0.010000}, {"ItemMap", "generic", 0.010000}, {"ItemCompass", "weapon", 0.010000}, {"ItemFlashlight", "weapon", 0.010000}, {"WeaponHolder_ItemHatchet", "object", 0.010000}, {"WeaponHolder_ItemTent", "object", 0.010000}, {"PartWoodPile", "magazine", 0.040000}, {"", "generic", 0.400000}};
    };

    class Residential: Default {
        zombieChance = 0.300000;
        maxRoaming = 2;
        zombieClass = {"zZombie_Base", "z_hunter", "z_teacher", "z_villager1", "z_villager2", "z_villager3"};
        lootChance = 0.800000;
        lootPos = {};
        lootType = {{"ItemWatch", "generic", 0.040000}, {"ItemCompass", "generic", 0.030000}, {"ItemMap", "weapon", 0.020000}, {"ItemFlashlight", "generic", 0.010000}, {"ItemKnife", "generic", 0.040000}, {"ItemMatchbox_DZE", "generic", 0.010000}, {"", "generic", 0.320000}, {"backpacks", "backpacks", 0.040000}, {"tents", "tents", 0.010000}, {"", "trash", 0.170000}, {"Binocular", "weapon", 0.020000}, {"PartPlywoodPack", "magazine", 0.020000}, {"clothes", "clothes", 0.010000}, {"specialclothes", "specialclothes", 0.010000}, {"WeaponHolder_MeleeCrowbar", "object", 0.030000}, {"pistols", "cfglootweapon", 0.040000}, {"shotgunsingleshot", "cfglootweapon", 0.040000}};
        lootTypeSmall = {{"ItemSodaMdew", "magazine", 0.010000}, {"ItemSodaRbull", "magazine", 0.010000}, {"ItemSodaOrangeSherbet", "magazine", 0.020000}, {"ItemWatch", "weapon", 0.050000}, {"ItemCompass", "weapon", 0.040000}, {"ItemMap", "weapon", 0.030000}, {"pistols", "cfglootweapon", 0.120000}, {"ItemFlashlight", "weapon", 0.020000}, {"ItemKnife", "weapon", 0.040000}, {"ItemMatchbox_DZE", "weapon", 0.030000}, {"", "generic", 0.380000}, {"", "trash", 0.170000}, {"Binocular", "weapon", 0.020000}, {"clothes", "single", 0.010000}, {"specialclothes", "single", 0.010000}};
    };

    class Office: Default {
        maxRoaming = 3;
        zombieClass = {"z_suit1", "z_suit2"};
        zombieChance = 0.300000;
        lootChance = 0.800000;
        lootPos = {};
        lootType = {{"ItemWatch", "generic", 0.040000}, {"ItemCompass", "generic", 0.030000}, {"ItemMap", "weapon", 0.020000}, {"ItemFlashlight", "generic", 0.010000}, {"ItemKnife", "generic", 0.040000}, {"ItemMatchbox_DZE", "generic", 0.010000}, {"", "generic", 0.310000}, {"backpacks", "backpacks", 0.040000}, {"tents", "tents", 0.010000}, {"", "trash", 0.210000}, {"clothes", "clothes", 0.010000}, {"specialclothes", "specialclothes", 0.010000}, {"WeaponHolder_MeleeCrowbar", "object", 0.030000}, {"ItemBriefcaseEmpty", "magazine", 0.010000}};
        lootTypeSmall = {{"ItemWatch", "weapon", 0.050000}, {"ItemCompass", "weapon", 0.040000}, {"ItemMap", "weapon", 0.030000}, {"ItemFlashlight", "weapon", 0.020000}, {"ItemKnife", "weapon", 0.050000}, {"ItemMatchbox_DZE", "weapon", 0.030000}, {"", "generic", 0.310000}, {"", "trash", 0.030000}, {"clothes", "single", 0.160000}, {"specialclothes", "single", 0.020000}, {"ItemDocument", "magazine", 0.010000}};
    };

    class Industrial: Default {
        zombieChance = 0.400000;
        zombieClass = {"z_worker1", "z_worker2", "z_worker3"};
        maxRoaming = 2;
        lootChance = 0.800000;
        lootPos = {};
        lootType = {{"ItemGenerator", "magazine", 0.010000}, {"ItemFuelBarrelEmpty", "magazine", 0.010000}, {"", "generic", 0.170000}, {"", "trash", 0.250000}, {"", "military", 0.040000}, {"PartGeneric", "magazine", 0.040000}, {"PartWheel", "magazine", 0.050000}, {"PartFueltank", "magazine", 0.020000}, {"PartEngine", "magazine", 0.020000}, {"PartGlass", "magazine", 0.040000}, {"PartVRotor", "magazine", 0.010000}, {"ItemJerrycan", "magazine", 0.040000}, {"WeaponHolder_ItemHatchet_DZE", "object", 0.070000}, {"ItemKnife", "military", 0.070000}, {"ItemToolbox", "weapon", 0.060000}, {"ItemWire", "magazine", 0.010000}, {"ItemTankTrap", "magazine", 0.040000}, {"ItemKeyKit", "weapon", 0.010000}, {"CinderBlocks", "magazine", 0.030000}, {"MortarBucket", "magazine", 0.010000}};
        lootTypeSmall = {{"", "generic", 0.500000}, {"", "trash", 0.280000}, {"", "military", 0.140000}, {"ItemKnife", "weapon", 0.070000}, {"ItemKeyKit", "weapon", 0.010000}};
    };

    class IndustrialFuel: Default {
        zombieChance = 0.400000;
        zombieClass = {"z_worker1", "z_worker2", "z_worker3"};
        maxRoaming = 2;
        lootChance = 0.800000;
        lootPos = {};
        lootType = {{"ItemGenerator", "magazine", 0.010000}, {"fuel_pump_kit", "magazine", 0.010000}, {"", "generic", 0.180000}, {"", "trash", 0.280000}, {"", "military", 0.040000}, {"PartGeneric", "magazine", 0.040000}, {"PartWheel", "magazine", 0.050000}, {"PartFueltank", "magazine", 0.020000}, {"PartEngine", "magazine", 0.020000}, {"PartGlass", "magazine", 0.040000}, {"PartVRotor", "magazine", 0.010000}, {"ItemJerrycan", "magazine", 0.040000}, {"WeaponHolder_ItemHatchet_DZE", "object", 0.070000}, {"ItemKnife", "military", 0.070000}, {"ItemToolbox", "weapon", 0.060000}, {"ItemWire", "magazine", 0.010000}, {"ItemTankTrap", "magazine", 0.040000}, {"ItemKeyKit", "weapon", 0.010000}};
        lootTypeSmall = {{"", "generic", 0.500000}, {"", "trash", 0.280000}, {"", "military", 0.140000}, {"ItemKnife", "weapon", 0.070000}, {"ItemKeyKit", "weapon", 0.010000}};
    };

    class Farm: Default {
        zombieChance = 0.300000;
        maxRoaming = 3;
        zombieClass = {"zZombie_Base", "z_hunter", "z_hunter", "z_hunter", "z_villager1", "z_villager2", "z_villager3"};
        lootChance = 0.900000;
        lootPos = {};
        lootType = {{"ItemJerrycan", "magazine", 0.050000}, {"", "generic", 0.300000}, {"", "trash", 0.110000}, {"PartPlankPack", "magazine", 0.060000}, {"WeaponHolder_ItemHatchet_DZE", "object", 0.050000}, {"ItemFuelBarrelEmpty", "magazine", 0.010000}, {"WeaponHolder_ItemMachete", "object", 0.030000}, {"ItemFishingPole", "weapon", 0.020000}, {"ItemLightBulb", "magazine", 0.020000}, {"ItemSledgeHandle", "magazine", 0.020000}, {"farmweapons", "cfglootweapon", 0.150000}};
        lootTypeSmall = {{"", "generic", 0.790000}, {"", "trash", 0.140000}, {"", "military", 0.050000}, {"ItemLightBulb", "magazine", 0.010000}, {"ItemSledgeHead", "magazine", 0.010000}};
    };

    class Supermarket: Default {
        lootChance = 0.600000;
        minRoaming = 2;
        maxRoaming = 6;
        zombieChance = 0.300000;
        zombieClass = {"zZombie_Base", "zZombie_Base", "z_teacher", "z_suit1", "z_suit2"};
        lootType = {{"ItemSodaMdew", "magazine", 0.010000}, {"ItemSodaRbull", "magazine", 0.010000}, {"ItemSodaOrangeSherbet", "magazine", 0.030000}, {"ItemWatch", "generic", 0.070000}, {"ItemCompass", "generic", 0.020000}, {"ItemMap", "weapon", 0.040000}, {"ItemFlashlight", "generic", 0.010000}, {"ItemKnife", "generic", 0.020000}, {"ItemMatchbox_DZE", "generic", 0.040000}, {"", "generic", 0.040000}, {"backpacks", "backpacks", 0.070000}, {"tents", "tents", 0.010000}, {"", "food", 0.300000}, {"", "trash", 0.170000}, {"Binocular", "weapon", 0.050000}, {"PartPlywoodPack", "magazine", 0.020000}, {"pistols", "cfglootweapon", 0.040000}, {"shotgunsingleshot", "cfglootweapon", 0.040000}};
        lootTypeSmall = {{"ItemSodaMdew", "magazine", 0.010000}, {"ItemSodaRbull", "magazine", 0.010000}, {"ItemSodaOrangeSherbet", "magazine", 0.030000}, {"ItemWatch", "weapon", 0.070000}, {"ItemCompass", "weapon", 0.030000}, {"ItemMap", "weapon", 0.050000}, {"pistols", "cfglootweapon", 0.080000}, {"ItemFlashlight", "weapon", 0.010000}, {"ItemKnife", "weapon", 0.020000}, {"ItemMatchbox_DZE", "weapon", 0.040000}, {"", "generic", 0.210000}, {"", "food", 0.240000}, {"", "trash", 0.160000}, {"Binocular", "weapon", 0.020000}, {"ItemMixOil", "magazine", 0.020000}};
    };

    class HeliCrash: Default {
        zombieChance = 0.400000;
        maxRoaming = 2;
        zombieClass = {"z_soldier_pilot"};
        lootChance = 0.500000;
        lootPos = {};
        lootType = {{"assaultrifles", "cfglootweapon", 0.100000}, {"submachinegun", "cfglootweapon", 0.040000}, {"sniperrifles", "cfglootweapon", 0.070000}, {"machineguns", "cfglootweapon", 0.060000}, {"", "military", 0.300000}, {"", "medical", 0.180000}, {"MAAWS", "weapon", 0.020000}, {"MedBox0", "object", 0.050000}, {"NVGoggles", "weapon", 0.010000}, {"AmmoBoxSmall_556", "object", 0.030000}, {"AmmoBoxSmall_762", "object", 0.030000}, {"militaryclothes", "militaryclothes", 0.050000}, {"militaryammo", "militaryammo", 0.060000}};
    };

    class HeliCrash_No50s: Default {
        zombieChance = 0.400000;
        maxRoaming = 2;
        zombieClass = {"z_soldier_pilot"};
        lootChance = 0.500000;
        lootPos = {};
        lootType = {{"assaultrifles", "cfglootweapon", 0.100000}, {"submachinegun", "cfglootweapon", 0.040000}, {"sniperrifles", "cfglootweapon", 0.070000}, {"machineguns", "cfglootweapon", 0.060000}, {"", "military", 0.300000}, {"", "medical", 0.180000}, {"MAAWS", "weapon", 0.020000}, {"MedBox0", "object", 0.050000}, {"NVGoggles", "weapon", 0.010000}, {"AmmoBoxSmall_556", "object", 0.030000}, {"AmmoBoxSmall_762", "object", 0.030000}, {"militaryclothes", "militaryclothes", 0.050000}, {"militaryammo", "militaryammo", 0.060000}};
    };

    class Hospital: Default {
        zombieChance = 0.400000;
        minRoaming = 2;
        maxRoaming = 6;
        zombieClass = {"z_doctor", "z_doctor", "z_doctor"};
        lootChance = 1;
        lootPos = {};
        lootType = {{"", "trash", 0.28}, {"", "hospital", 0.700000}, {"MedBox0", "object", 0.02}};
        lootTypeSmall = {{"", "trash", 0.100000}, {"", "hospital", 0.900000}};
    };

    class Military: Default {
        zombieChance = 0.300000;
        maxRoaming = 6;
        zombieClass = {"z_soldier", "z_soldier_heavy", "z_policeman"};
        lootChance = 0.700000;
        lootPos = {};
        lootType = {{"pistols", "cfglootweapon", 0.040000}, {"assaultrifles", "cfglootweapon", 0.130000}, {"sniperrifles", "cfglootweapon", 0.040000}, {"shotgunsingleshot", "cfglootweapon", 0.060000}, {"submachinegun", "cfglootweapon", 0.070000}, {"Binocular", "weapon", 0.030000}, {"ItemFlashlightRed", "military", 0.040000}, {"ItemKnife", "military", 0.010000}, {"ItemGPS", "weapon", 0.010000}, {"ItemMap", "military", 0.020000}, {"militarybackpacks", "militarybackpacks", 0.050000}, {"", "medical", 0.030000}, {"", "generic", 0.100000}, {"", "military", 0.300000}, {"ItemEtool", "weapon", 0.020000}, {"ItemSandbag", "magazine", 0.020000}, {"machineguns", "cfglootweapon", 0.030000}};
        lootTypeSmall = {{"pistols", "cfglootweapon", 0.140000}, {"Binocular", "weapon", 0.050000}, {"ItemFlashlightRed", "weapon", 0.030000}, {"ItemKnife", "weapon", 0.040000}, {"ItemGPS", "weapon", 0.020000}, {"", "medical", 0.120000}, {"", "generic", 0.220000}, {"", "military", 0.350000}, {"ItemEtool", "weapon", 0.030000}};
    };

    class MilitaryIndustrial: Default {
        zombieChance = 0.300000;
        maxRoaming = 6;
        zombieClass = {"z_soldier", "z_soldier_heavy", "z_policeman", "z_soldier", "z_soldier_heavy", "z_policeman", "z_worker1", "z_worker2", "z_worker3"};
        lootChance = 0.700000;
        lootPos = {};
        lootType = {{"pistols", "cfglootweapon", 0.020000}, {"assaultrifles", "cfglootweapon", 0.050000}, {"PartGeneric", "magazine", 0.030000}, {"sniperrifles", "cfglootweapon", 0.010000}, {"shotgunsingleshot", "cfglootweapon", 0.050000}, {"ItemGenerator", "magazine", 0.010000}, {"submachinegun", "cfglootweapon", 0.050000}, {"PartGeneric", "magazine", 0.030000}, {"ItemGenerator", "magazine", 0.010000}, {"PartWheel", "magazine", 0.020000}, {"Binocular", "weapon", 0.010000}, {"ItemFlashlightRed", "military", 0.030000}, {"ItemKnife", "military", 0.040000}, {"ItemGPS", "weapon", 0.010000}, {"PartVRotor", "magazine", 0.010000}, {"militarybackpacks", "militarybackpacks", 0.030000}, {"", "medical", 0.050000}, {"", "generic", 0.350000}, {"", "military", 0.070000}, {"ItemEtool", "weapon", 0.030000}, {"ItemSandbag", "magazine", 0.020000}, {"ItemFuelBarrelEmpty", "magazine", 0.030000}, {"fuel_pump_kit", "magazine", 0.010000}, {"machineguns", "cfglootweapon", 0.010000}};
        lootTypeSmall = {{"pistols", "cfglootweapon", 0.140000}, {"Binocular", "weapon", 0.050000}, {"ItemFlashlightRed", "weapon", 0.030000}, {"ItemKnife", "weapon", 0.040000}, {"ItemGPS", "weapon", 0.020000}, {"", "medical", 0.120000}, {"", "generic", 0.220000}, {"", "military", 0.350000}, {"ItemEtool", "weapon", 0.030000}};
    };

    class IndustrialMilitary: Default {
        zombieChance = 0.400000;
        maxRoaming = 6;
        zombieClass = {"z_soldier", "z_soldier_heavy", "z_policeman", "z_soldier", "z_soldier_heavy", "z_policeman", "z_worker1", "z_worker2", "z_worker3"};
        lootChance = 0.700000;
        lootPos = {};
        lootType = {{"pistols", "cfglootweapon", 0.020000}, {"assaultrifles", "cfglootweapon", 0.050000}, {"PartGeneric", "magazine", 0.030000}, {"sniperrifles", "cfglootweapon", 0.010000}, {"shotgunsingleshot", "cfglootweapon", 0.050000}, {"ItemGenerator", "magazine", 0.010000}, {"submachinegun", "cfglootweapon", 0.050000}, {"PartGeneric", "magazine", 0.030000}, {"ItemGenerator", "magazine", 0.010000}, {"PartWheel", "magazine", 0.020000}, {"Binocular", "weapon", 0.010000}, {"ItemFlashlightRed", "military", 0.030000}, {"ItemKnife", "military", 0.040000}, {"ItemGPS", "weapon", 0.010000}, {"PartVRotor", "magazine", 0.010000}, {"PartFueltank", "magazine", 0.030000}, {"PartEngine", "magazine", 0.040000}, {"PartGlass", "magazine", 0.050000}, {"militarybackpacks", "militarybackpacks", 0.030000}, {"", "medical", 0.050000}, {"", "generic", 0.250000}, {"", "military", 0.070000}, {"ItemEtool", "weapon", 0.030000}, {"ItemSandbag", "magazine", 0.020000}, {"ItemFuelBarrelEmpty", "magazine", 0.030000}, {"fuel_pump_kit", "magazine", 0.010000}, {"machineguns", "cfglootweapon", 0.010000}};
        lootTypeSmall = {{"pistols", "cfglootweapon", 0.140000}, {"Binocular", "weapon", 0.050000}, {"ItemFlashlightRed", "weapon", 0.030000}, {"ItemKnife", "weapon", 0.040000}, {"ItemGPS", "weapon", 0.020000}, {"", "medical", 0.120000}, {"", "generic", 0.220000}, {"", "military", 0.350000}, {"ItemEtool", "weapon", 0.030000}};
    };

    class MilitarySpecial: Default {
        zombieChance = 0.400000;
        minRoaming = 2;
        maxRoaming = 6;
        zombieClass = {"z_soldier_heavy"};
        lootChance = 0.700000;
        lootPos = {};
        lootType = {{"assaultrifles", "cfglootweapon", 0.100000}, {"machineguns", "cfglootweapon", 0.040000}, {"pistols", "cfglootweapon", 0.080000}, {"sniperrifles", "cfglootweapon", 0.030000}, {"militaryshotguns", "cfglootweapon", 0.050000}, {"submachinegun", "cfglootweapon", 0.060000}, {"AmmoBoxSmall_556", "object", 0.010000}, {"AmmoBoxSmall_762", "object", 0.020000}, {"Binocular", "weapon", 0.010000}, {"ItemFlashlightRed", "military", 0.020000}, {"ItemKnife", "military", 0.010000}, {"ItemGPS", "weapon", 0.010000}, {"ItemMap", "military", 0.010000}, {"Binocular_Vector", "military", 0.010000}, {"militarybackpacks", "militarybackpacks", 0.040000}, {"", "medical", 0.080000}, {"", "generic", 0.300000}, {"", "military", 0.010000}, {"machinegunammo", "machinegunammo", 0.050000}, {"militaryclothes", "militaryclothes", 0.050000}, {"NVGoggles", "weapon", 0.010000}};
        lootTypeSmall = {{"pistols", "cfglootweapon", 0.100000}, {"AmmoBoxSmall_556", "object", 0.020000}, {"AmmoBoxSmall_762", "object", 0.020000}, {"Binocular", "weapon", 0.020000}, {"ItemFlashlightRed", "military", 0.010000}, {"ItemKnife", "military", 0.020000}, {"ItemGPS", "weapon", 0.020000}, {"ItemMap", "weapon", 0.010000}, {"Binocular_Vector", "weapon", 0.030000}, {"", "medical", 0.080000}, {"", "generic", 0.150000}, {"", "military", 0.330000}, {"5Rnd_86x70_L115A1", "magazine", 0.030000}, {"10Rnd_127x99_m107", "magazine", 0.020000}, {"machinegunammoexpl", "single", 0.020000}, {"militaryclothes", "single", 0.050000}, {"NVGoggles", "weapon", 0.040000}, {"100Rnd_762x54_PK", "magazine", 0.020000}};
    };

    class Hunting: Default {
        zombieChance = 0.400000;
        minRoaming = 1;
        maxRoaming = 3;
        zombieClass = {"z_hunter", "z_hunter", "z_hunter"};
        lootChance = 1;
        lootPos = {};
        lootType = {{"ItemMap", "weapon", 0.020000}, {"ItemFlashlight", "generic", 0.010000}, {"ItemKnife", "generic", 0.010000}, {"ItemMatchbox_DZE", "generic", 0.030000}, {"farmweapons", "cfglootweapon", 0.030000}, {"", "military", 0.380000}, {"WeaponHolder_ItemMachete", "object", 0.020000}, {"", "hunter", 0.500000}};
        lootTypeSmall = {{"ItemMap", "weapon", 0.020000}, {"ItemFlashlight", "weapon", 0.020000}, {"ItemKnife", "weapon", 0.020000}, {"ItemMatchbox_DZE", "weapon", 0.040000}, {"", "military", 0.400000}, {"", "hunter", 0.500000}};
    };

    class DynamicDebris: Default {
        lootChance = 0.800000;
        minRoaming = 0;
        maxRoaming = 2;
        zombieChance = 0.300000;
        zombieClass = {"zZombie_Base", "zZombie_Base", "z_teacher", "z_suit1", "z_suit2"};
        lootType = {{"ItemWatch", "generic", 0.190000}, {"ItemCompass", "generic", 0.010000}, {"ItemMap", "weapon", 0.060000}, {"Makarov", "weapon", 0.020000}, {"Colt1911", "weapon", 0.020000}, {"ItemFlashlight", "generic", 0.060000}, {"ItemKnife", "generic", 0.060000}, {"ItemMatchbox_DZE", "generic", 0.060000}, {"ItemToolbox", "weapon", 0.020000}, {"", "generic", 0.170000}, {"", "food", 0.060000}, {"PartGeneric", "magazine", 0.070000}, {"PartWheel", "magazine", 0.060000}, {"PartFueltank", "magazine", 0.030000}, {"PartEngine", "magazine", 0.010000}, {"PartGlass", "magazine", 0.080000}, {"WeaponHolder_ItemJerrycan", "object", 0.030000}};
    };

    class DynamicDebrisMilitary: Default {
        lootChance = 0.800000;
        minRoaming = 0;
        maxRoaming = 2;
        zombieChance = 0.300000;
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        lootType = {{"ItemEtool", "weapon", 0.050000}, {"ItemSandbag", "magazine", 0.100000}, {"", "military", 0.080000}, {"ItemWatch", "generic", 0.100000}, {"ItemCompass", "generic", 0.020000}, {"ItemMap", "weapon", 0.050000}, {"MakarovSD", "weapon", 0.010000}, {"Colt1911", "weapon", 0.020000}, {"ItemFlashlight", "generic", 0.010000}, {"ItemKnife", "generic", 0.050000}, {"ItemMatchbox_DZE", "generic", 0.050000}, {"ItemToolbox", "weapon", 0.020000}, {"", "generic", 0.150000}, {"", "food", 0.050000}, {"PartGeneric", "magazine", 0.060000}, {"PartWheel", "magazine", 0.050000}, {"PartFueltank", "magazine", 0.030000}, {"PartEngine", "magazine", 0.020000}, {"PartGlass", "magazine", 0.030000}, {"PartVRotor", "magazine", 0.020000}, {"WeaponHolder_ItemJerrycan", "object", 0.030000}};
    };

    class SupplyDrop: Default {
        zombieChance = 1;
        maxRoaming = 3;
        zombieClass = {"zZombie_Base", "z_hunter", "z_hunter", "z_hunter", "z_villager1", "z_villager2", "z_villager3", "z_doctor", "z_soldier_pilot", "z_soldier_heavy"};
        lootChance = 1;
        lootPos = {};
        lootType = {{"PartPlywoodPack", "magazine", 0.100000}, {"PartPlankPack", "magazine", 0.200000}, {"CinderBlocks", "magazine", 0.100000}, {"MortarBucket", "magazine", 0.100000}, {"bulk_PartGeneric", "magazine", 0.200000}, {"bulk_ItemSandbag", "magazine", 0.100000}, {"bulk_ItemTankTrap", "magazine", 0.100000}, {"ItemSledge", "weapon", 0.100000}};
    };

    class MassGrave: Default {
        zombieChance = 1;
        maxRoaming = 3;
        zombieClass = {"zZombie_Base", "z_hunter", "z_hunter", "z_hunter", "z_villager1", "z_villager2", "z_villager3", "z_doctor", "z_soldier_pilot", "z_soldier_heavy"};
        lootChance = 1;
        lootPos = {};
        lootType = {{"M16A2", "weapon", 0.030000}, {"M16A2GL", "weapon", 0.010000}, {"M249_EP1_DZ", "weapon", 0.010000}, {"M9SD", "weapon", 0.020000}, {"Pecheneg_DZ", "weapon", 0.020000}, {"PK_DZ", "weapon", 0.010000}, {"AK_74", "weapon", 0.020000}, {"M4A1_Aim", "weapon", 0.010000}, {"AKS_74_kobra", "weapon", 0.010000}, {"AKS_74_U", "weapon", 0.020000}, {"AK_47_M", "weapon", 0.020000}, {"M24", "weapon", 0.010000}, {"SVD_CAMO", "weapon", 0.010000}, {"M1014", "weapon", 0.020000}, {"BAF_LRR_scoped", "weapon", 0.010000}, {"M4SPR", "weapon", 0.010000}, {"M4A1", "weapon", 0.010000}, {"M14_EP1", "weapon", 0.020000}, {"UZI_EP1", "weapon", 0.030000}, {"Remington870_lamp", "weapon", 0.010000}, {"glock17_EP1", "weapon", 0.020000}, {"M240_DZ", "weapon", 0.020000}, {"M4A1_AIM_SD_camo", "weapon", 0.010000}, {"M16A4_ACG", "weapon", 0.010000}, {"M4A1_HWS_GL_camo", "weapon", 0.010000}, {"Mk_48_DZ", "weapon", 0.010000}, {"M4A3_CCO_EP1", "weapon", 0.010000}, {"AmmoBoxSmall_556", "object", 0.030000}, {"AmmoBoxSmall_762", "object", 0.030000}, {"Binocular", "weapon", 0.010000}, {"ItemFlashlightRed", "military", 0.020000}, {"ItemKnife", "military", 0.010000}, {"ItemGPS", "weapon", 0.010000}, {"ItemMap", "military", 0.010000}, {"Binocular_Vector", "military", 0.010000}, {"DZ_ALICE_Pack_EP1", "object", 0.030000}, {"DZ_TK_Assault_Pack_EP1", "object", 0.020000}, {"DZ_British_ACU", "object", 0.020000}, {"DZ_CivilBackpack_EP1", "object", 0.020000}, {"DZ_Backpack_EP1", "object", 0.010000}, {"DZ_LargeGunBag_EP1", "object", 0.010000}, {"", "medical", 0.050000}, {"", "generic", 0.050000}, {"", "military", 0.130000}, {"PipeBomb", "magazine", 0.010000}, {"Sa58V_RCO_EP1", "weapon", 0.010000}, {"Sa58V_CCO_EP1", "weapon", 0.010000}, {"G36_C_SD_camo", "weapon", 0.010000}, {"M40A3", "weapon", 0.010000}, {"100Rnd_762x54_PK", "magazine", 0.010000}, {"", "militaryclothes", 0.050000}, {"WeaponHolder_ItemMachete", "object", 0.020000}, {"SCAR_H_LNG_Sniper_SD", "weapon", 0.010000}, {"2000Rnd_762x51_M134", "magazine", 0.010000}, {"KSVK_DZE", "weapon", 0.010000}, {"m240_scoped_EP1_DZE", "weapon", 0.010000}};
    };

    class Church: Residential {
        minRoaming = 1;
        maxRoaming = 3;
        zombieClass = {"z_priest", "z_priest", "z_priest"};
    };

    class Land_HouseV_1I4: Residential {
        lootPos = {{0.222168, 3.908390, -2.730310}, {-1.829830, -1.814030, -2.767680}};
        lootPosZombie = {{-0.329834, -5.010250, -1.892610}, {-1.307620, 1.832400, -1.852490}};
        lootPosSmall = {{-1.917720, -5.138120, -2.148110}, {-4.344970, -1.120360, -1.885360}, {-2.123290, -2.593630, -2.055820}, {-1.345950, -2.809690, -2.048250}};
    };

    class Land_kulna: Residential {
        lootPos = {{0.213379, 1.497070, -1.143440}};
        lootPosZombie = {{0.017578, -2.054200, -0.268438}};
    };

    class Land_Ind_Workshop01_01: Industrial {
        lootPos = {{1.312010, -2.713870, -1.292340}, {-0.819336, 0.449219, -1.299460}};
        lootPosZombie = {{-1.147460, -0.979004, -0.424032}, {1.698490, -0.175781, -0.418507}};
        lootPosSmall = {{1.813720, -3.336430, -0.714019}, {1.926270, -1.695310, -1.294930}, {-1.194820, 2.009770, -0.228250}, {-0.822510, 1.258300, -0.836819}};
    };

    class Land_Ind_Garage01: Industrial {
        lootPos = {{1.737550, 2.719730, -1.243320}, {-0.880371, -1.908200, -1.233180}, {0.607178, 3.237300, -1.231570}};
        lootPosZombie = {{-0.977051, 3.120120, -0.349579}, {2.856200, 0.264648, -0.360748}};
        lootPosSmall = {{2.937500, 2.477540, -1.120360}, {2.860600, 3.333980, -1.121310}, {1.352050, 3.583980, -0.011993}, {1.761960, 3.622070, -0.772003}};
    };

    class Land_Ind_Workshop01_02: Industrial {
        lootPos = {{1.471440, -0.825195, -1.429870}, {-1.296630, -0.373047, -1.428960}};
        lootPosZombie = {{-0.029541, 1.723140, -0.551222}, {-0.258545, -0.877441, -0.554681}};
        lootPosSmall = {{1.652830, 1.668460, -1.427420}, {-1.757570, -1.088870, -1.438040}};
    };

    class Land_Ind_Workshop01_04: Industrial {
        lootPos = {{-1.622070, -6.373050, -1.527240}, {-0.118408, -3.882810, -1.527880}, {-1.016110, 2.134280, -1.530990}};
        lootPosZombie = {{-0.403076, -6.741210, -0.649656}, {1.035640, -3.411130, -0.656917}, {-0.902344, 4.502930, -0.655569}};
        lootPosSmall = {{-1.383300, -3.027340, -0.298156}, {-1.951900, -3.378910, -1.528030}, {1.604250, 4.752440, -1.529790}, {-0.324219, 1.915040, -0.680825}, {-0.302734, 2.085450, 0.079077}, {-1.615230, -3.038090, 0.071821}};
        hangPos = {{-0.541748, 4.012210, -2.030680}};
    };

    class Land_Ind_Workshop01_L: Industrial {
        lootPos = {{3.890630, -4.098880, -1.312990}, {1.802730, -1.885990, -1.314120}, {-0.928223, 4.506350, -1.313640}};
        lootPosZombie = {{0.876465, -3.666990, -0.438329}, {-2.282230, 4.862300, -0.429002}, {-2.242680, 2.191890, -0.429238}};
        lootPosSmall = {{0.627930, -1.490970, -1.233950}, {0.805664, -1.456050, -0.093947}, {4.560550, -5.294430, -1.312790}, {0.027344, 5.044430, -0.475650}, {0.250000, 5.003420, 0.284006}};
    };

    class Land_Hangar_2: Industrial {
        lootPos = {{-13.181600, 10.420400, -2.563180}, {-0.127441, -2.887940, -2.563180}, {0.291992, 3.947750, -2.563180}, {8.944820, 6.877930, -2.563180}, {-13.688000, -4.678710, -2.563180}, {3.424800, -8.149900, -2.563180}};
        lootPosZombie = {{-2.163570, -9.158200, -1.688180}, {14.177700, -9.111820, -1.688180}, {-14.174800, -9.454590, -1.688180}, {-2.354980, 10.244100, -1.688180}, {2.535160, 10.600100, -1.688180}};
        lootPosSmall = {{-14.372100, 11.174300, -2.563190}, {-0.057129, 5.943850, -2.563190}, {11.751000, 11.352500, -2.563190}, {-0.458008, -9.686520, -2.563190}, {-14.347200, -6.297360, -2.563190}, {14.427700, -4.831540, -2.563190}};
    };

    class Land_hut06: Residential {
        lootPos = {{0.328125, 2.269530, -1.577860}, {-0.552368, -0.062012, -1.538370}};
    };

    class Land_stodola_old_open: Farm {
        lootPos = {{2.543700, -10.659900, 2.964440}, {-0.402100, -10.622800, 2.964440}, {-2.566410, -10.853800, -0.995487}, {4.666500, 3.453860, -5.080550}, {-2.244140, 10.396000, -5.080550}, {3.086910, 9.249760, -5.080550}, {-1.127440, 10.535900, -0.993513}, {-1.275630, 10.618400, 2.964440}, {2.992680, 10.766800, 2.964440}, {4.354250, -10.592300, -5.080550}, {-2.473630, -5.491940, -5.080550}};
        lootPosZombie = {{4.714600, 3.575200, -0.118511}, {-2.763670, -3.530030, -0.138124}, {1.017330, -0.312012, -4.205550}};
        lootPosSmall = {{2.783200, -9.156980, -4.130550}, {-1.837650, 7.059080, -4.130550}, {3.732180, -5.770750, -0.040363}, {0.913818, -11.109900, 2.964440}, {5.147950, -10.010000, -0.997503}, {-2.898190, 7.210690, -5.080550}, {1.790530, 8.751710, -5.080550}, {5.077880, 9.515140, -0.993513}, {3.658450, 10.198500, 2.964440}, {0.854980, -3.377930, -4.130550}};
        hangPos = {{-1.505370, 5.344730, -5.088130}, {0.494141, 9.427250, -5.090160}, {2.594730, -6.211910, -5.080550}, {-1.748540, -2.398440, -1.143010}};
    };

    class Land_A_FuelStation_Build: IndustrialFuel {
        lootChance = 0.500000;
        zombieClass = {"zZombie_Base", "zZombie_Base", "z_teacher", "z_suit1", "z_suit2"};
        lootPos = {{1.882810, -0.879639, -1.574580}};
        lootPosZombie = {{-1.751460, -0.942993, -0.699436}, {2.143310, 0.848145, -0.699585}};
        lootPosSmall = {{-1.925780, 0.237061, -0.604466}, {-1.386720, 0.592651, -1.094590}};
    };

    class Land_A_GeneralStore_01a: Supermarket {
        lootPos = {{13.296900, 4.946780, -1.201550}, {2.975590, 7.323730, -1.201550}, {-8.353520, -0.024414, -1.201550}, {7.782230, 4.458010, -1.201550}, {6.598630, -0.292969, -1.201550}, {-6.922850, -1.670900, -1.201550}, {11.918900, -2.818850, -1.201550}, {-1.855470, -2.161620, -1.201550}};
        lootPosZombie = {{-8.221680, 1.932130, -0.326550}, {14.360400, 1.988280, -0.326550}, {8.036130, -0.300781, -0.326550}, {-7.642580, -2.219730, -0.326550}, {9.833980, -1.418460, -0.326550}};
        lootPosSmall = {{12.467800, 4.511720, -1.201550}, {12.211900, 6.250980, -0.301548}, {12.189500, 3.682620, 0.048450}, {11.817400, 6.316890, -0.651550}, {-8.676760, -2.410640, -1.131550}, {-4.200200, -3.143550, -0.351551}, {-0.165039, -1.345700, -0.351551}, {14.600600, -1.382810, -0.351551}, {3.038090, -5.034180, -0.351551}, {0.512695, 3.405270, -0.311550}, {4.776370, 6.761720, -0.301548}, {7.275390, 0.938477, -0.621552}, {3.967770, 1.004880, -0.621552}, {0.389648, 0.954590, -0.621552}, {5.040040, 3.442870, -0.651550}, {1.852540, 6.424800, -0.651550}, {-3.657230, 6.611330, -0.201550}, {-4.397460, 4.461910, -0.691551}, {6.924800, 6.385740, -1.011550}, {2.776370, 3.384770, -1.011550}, {-0.217773, 6.680660, -1.011550}, {4.497070, -4.988280, 0.408451}, {-2.332030, -1.352050, 0.408451}, {2.012700, -1.365720, 0.408451}, {6.397460, -3.043950, 0.408451}, {14.604500, -0.722168, 0.408451}, {-2.431640, -3.736820, 0.028450}, {-4.775390, -1.359860, 0.028450}, {-0.436523, -3.042970, 0.028450}, {14.610400, -2.171390, 0.028450}, {12.659200, 0.830078, 0.348450}, {4.006840, -3.150390, -0.351551}, {2.733400, -3.041500, -0.731548}, {-2.676760, -1.361330, -0.731548}, {-1.004880, -5.005370, -0.731548}, {8.348630, -1.430180, -0.731548}, {1.829100, 3.771970, -0.661549}};
    };

    class Land_A_GeneralStore_01: Supermarket {
        lootPos = {{11.814900, 1.279790, -1.201550}, {5.104490, 1.613770, -1.201550}, {1.702150, 3.429200, -1.201550}, {-0.771973, 2.041020, -1.201550}, {-3.594730, -6.046880, -1.201550}, {-2.384280, -5.822020, -1.201550}, {10.517100, -6.467290, -1.201550}, {12.847200, -4.977540, -1.201550}, {8.636230, -3.653810, -1.201550}, {-3.228520, -10.045400, -1.210810}};
        lootPosZombie = {{12.404800, -1.494630, -0.326549}, {3.188480, 1.239260, -0.326549}, {13.121100, 4.950930, -0.326549}, {-9.595210, -3.696780, -0.326549}, {6.663090, -3.920410, -0.326549}, {-8.385250, -5.505860, -0.326549}, {8.260740, -5.412350, -0.326549}, {4.033690, -5.503420, -0.326549}};
        lootPosSmall = {{11.053700, -0.321289, -0.661549}, {11.030300, 2.883300, 0.048451}, {10.664600, 1.863770, -0.651548}, {6.661620, -2.699710, -0.611548}, {6.029790, -2.641600, -0.611548}, {2.165530, -2.682620, -0.611548}, {-1.369630, -2.756840, -0.611548}, {-0.919434, -0.283936, -0.301549}, {0.583008, -0.308594, -1.011550}, {0.804199, 3.075200, -0.311549}, {4.902340, 3.040530, 0.048451}, {-5.737790, 0.694824, -0.201550}, {0.796875, 0.089844, -0.301549}, {2.731450, 2.664060, -0.301549}, {0.523926, 2.815670, -1.011550}, {-4.820800, 2.871580, -0.701549}, {-3.870610, -5.041500, -0.731549}, {-4.730960, -5.005370, 0.408451}, {-2.179200, -5.022220, -0.351549}, {-3.397950, -6.955080, -0.731549}, {-3.582030, -7.243650, -0.731549}, {-3.497560, -7.126950, 0.408451}, {-9.952150, -6.058590, 0.348451}, {13.413600, -5.934570, 0.408451}, {13.446300, -4.458980, 0.028451}, {13.442400, -6.202150, -0.351549}, {2.930180, -8.677730, -0.351549}, {1.535160, -6.791990, -0.351549}, {7.162110, -5.124270, -0.351549}, {6.793460, -5.118160, -0.731550}, {2.871580, -6.919430, -0.731550}, {0.054199, -5.032710, -0.731550}, {-1.979000, -8.687500, -0.731550}, {-5.844240, -5.048830, -0.731550}, {-6.992680, -5.068360, -1.111550}, {5.235350, -6.833500, -1.111550}, {0.290039, -8.687010, -1.111550}, {-0.649414, -8.681150, 0.408450}, {-0.983398, -9.562990, -1.210820}};
    };

    class Land_Farm_Cowshed_a: Farm {
        lootPos = {{-1.068360, -5.921630, -3.087630}, {1.690430, -4.910890, -3.087630}, {5.883300, -6.153810, -3.087630}, {8.839840, -5.602780, -3.087630}, {9.740230, -2.486570, -3.087630}, {2.884280, -2.345460, -3.087630}, {7.880370, 2.942140, -3.087630}};
        lootPosZombie = {{-7.527830, 0.260742, -2.212650}, {4.532710, -5.179690, -2.212650}};
        lootPosSmall = {{-6.748290, -2.981450, -3.037660}, {1.343990, 3.791990, -3.037660}};
    };

    class Land_Farm_Cowshed_b: Farm {
        lootPos = {{-3.267820, 2.718750, -3.031100}, {5.416990, -2.578130, -3.041110}};
        lootPosZombie = {{-2.559570, 0.068359, -2.226100}};
        lootPosSmall = {{3.468020, 3.366210, -3.051120}, {-9.985110, -3.279300, -3.091090}};
    };

    class Land_Farm_Cowshed_c: Farm {
        lootPos = {{0.625000, -2.611330, -3.065830}};
        lootPosZombie = {{-2.097410, 0.564453, -2.250820}};
        lootPosSmall = {{-2.824460, 3.184570, -3.115810}};
    };

    class Land_stodola_open: Farm {
        lootPos = {{-3.778810, 6.247800, -4.113480}, {1.591060, 6.314940, -4.109280}, {-3.947270, -1.956050, -4.153590}, {-0.440918, -3.911870, -4.193800}};
        lootPosZombie = {{1.663330, 4.707760, -3.248090}, {1.572020, -6.331300, -3.234130}};
        lootPosSmall = {{-4.222170, -6.128660, -3.324530}};
        hangPos = {{-0.932617, -3.359620, -4.164460}, {-2.015630, -0.115112, -4.194920}};
    };

    class Land_Barn_W_01: Farm {
        lootPos = {{-4.457760, 14.215300, -2.716070}, {4.342770, -6.150880, -2.572790}};
        lootPosZombie = {{5.302980, 18.086399, -1.761750}, {-5.426270, 17.779800, -1.761700}, {-5.701900, -19.120600, -1.755270}, {5.934810, -18.095200, -1.755450}, {0.378662, 0.887695, -1.758760}};
        lootPosSmall = {{4.093510, 10.387200, -2.695590}, {0.107910, 3.480960, -2.644460}, {-4.516360, -12.260300, -2.671480}, {3.544190, -15.831100, -2.630770}};
    };

    class land_shed_m01: Farm {
        lootPosZombie = {{0.218262, -1.783690, -0.347349}};
    };

    class land_r_housev2_04: Residential {
        lootPos = {{0.364502, 3.061280, -4.088760}, {-4.490970, 3.295650, -4.088700}, {7.062500, -1.540530, -4.090790}};
        lootPosZombie = {{-1.720210, 2.714600, -3.204290}, {2.752200, 2.966800, -3.204210}, {4.737060, -0.942627, -3.205460}};
        lootPosSmall = {{-5.886960, 2.770510, -4.088940}, {-4.326660, 6.004150, -4.088700}, {7.371580, 4.419680, -4.089180}, {6.170650, 2.390630, -4.090280}};
    };

    class Land_Hlidac_budka: Residential {
        lootPos = {{2.420900, 2.160640, -0.783617}};
        lootPosZombie = {{2.183110, 0.502441, 0.091384}};
        lootPosSmall = {{0.987305, 2.433590, -0.113617}, {1.677730, 2.249270, -0.113617}, {-0.138184, 0.084473, -0.713617}};
    };

    class Land_HouseV2_02_Interier: Residential {
        lootPos = {{6.974120, 1.269040, -5.530680}, {4.216310, 6.563960, -5.530680}, {-5.949220, -1.289550, -5.530680}, {-3.314940, 6.442870, -5.530680}};
        lootPosZombie = {{2.690430, 5.473630, -4.655680}, {-8.245610, -1.334960, -4.655680}, {-2.748780, 0.891602, -4.655680}, {2.676030, 1.128910, -4.655680}};
        lootPosSmall = {{6.446290, 1.725100, -4.610680}, {6.636720, 1.258300, -4.610680}, {8.774900, -2.237790, -4.740680}, {2.810060, 6.309080, -5.570680}, {-4.977540, -2.154300, -5.570680}, {-2.426760, 5.588870, -5.570680}};
    };

    class Land_a_stationhouse: Military {
        lootChance = 0.300000;
        lootPos = {{15.436000, 2.854980, -9.470580}, {17.986099, -6.528320, -9.470580}, {1.225830, 2.244630, -9.470580}, {-3.912600, -7.298340, -9.470580}, {-2.282710, -6.210940, -4.648900}, {-1.604000, -8.680180, -0.043786}, {-1.104000, -5.609380, 4.411390}, {-3.558110, -8.567870, 4.411390}, {-2.992190, -8.271480, 8.492090}};
        lootPosZombie = {{0.977295, -0.614746, -8.595580}, {3.884770, 2.830570, -8.595580}, {-2.979490, -5.493650, -8.595580}, {-1.087890, -8.406740, -3.773900}, {-4.223630, -8.686040, 0.831215}, {-0.745117, -8.688960, 5.286390}, {21.069300, -9.005370, -8.632910}, {-11.453100, -9.277340, -8.632910}, {-3.640140, 10.308600, -8.632910}};
        lootPosSmall = {{14.682600, 3.550290, -8.250580}, {9.972660, 3.485840, -9.400580}, {19.147699, -6.696290, -9.360580}, {19.171900, -7.479980, -9.360580}, {0.513672, 1.193360, -9.390580}, {0.514160, 3.341800, -8.630580}, {0.521240, 1.923340, -7.870580}, {-1.636230, -8.997560, -9.390580}, {-3.564700, -9.018550, -8.630580}, {-0.767090, -8.990720, -7.870580}, {-2.401370, -9.030270, -8.250580}, {-4.503910, -5.275880, -4.648900}, {-1.023930, -9.020510, 0.056213}, {-0.771484, -8.333500, 0.076214}, {-0.722900, -9.030760, 1.196210}, {-4.403080, -8.766600, 4.411390}, {-2.277830, -5.353030, 4.411390}, {-4.454100, -8.810550, 8.492090}, {9.125490, 3.646970, -8.250580}};
    };

    class Land_Mil_ControlTower: Military {
        lootChance = 0.400000;
        lootPos = {{7.332030, -1.104000, -1.078700}, {2.006840, -0.886230, -1.078700}, {6.109380, 3.344730, -1.078700}, {1.903320, 3.671880, -5.513670}, {8.713870, 3.804200, -9.638700}};
        lootPosZombie = {{2.660160, 3.628910, -8.753690}, {10.089800, 5.725590, -6.563690}, {5.059570, 3.613280, -4.588680}, {4.869140, 1.061520, -0.193695}};
        lootPosSmall = {{7.323240, -1.559570, 2.982670}, {5.490230, -1.729490, -0.378693}, {4.733400, -1.660640, -0.378693}, {7.449220, 2.038090, -0.378693}, {5.860350, 3.984380, -0.248688}, {6.212890, 4.025390, -1.008700}, {4.968750, -1.399410, -0.638702}, {1.080080, 3.983890, -5.513670}, {10.087900, 3.545900, -9.648680}};
    };

    class Land_SS_hangar: MilitaryIndustrial {
        maxRoaming = 3;
        lootPos = {{-13.056200, -17.631800, -5.872530}, {-12.990700, 20.872999, -5.872530}, {12.721700, 22.637699, -5.872530}, {1.804690, 3.942380, -5.872530}, {13.199700, -18.345699, -5.872530}};
        lootPosZombie = {{-12.056200, -20.051800, -4.997530}, {-7.356930, -1.450200, -4.997530}, {-6.185550, 16.336901, -4.997530}, {8.463380, 6.036130, -4.997530}};
        lootPosSmall = {{-14.136200, 12.672900, -5.872530}, {14.481900, -7.803710, -5.872530}};
    };

    class Land_A_Pub_01: Residential {
        zombieChance = 0.200000;
        lootPos = {{1.171880, 5.752200, -5.756230}, {6.461910, -1.737060, -5.016230}, {6.467770, 1.479490, -5.756230}, {0.975098, -5.808590, -5.756210}, {-5.797360, -2.578130, -1.791230}, {-7.353030, -3.762700, -1.791230}, {4.568850, 0.998291, -1.791230}, {3.459470, 0.236328, -1.791230}, {1.915040, 6.302000, -1.791230}, {0.114258, 2.174320, -1.791230}, {6.528320, 6.108890, -1.791230}, {0.555176, 0.169189, -1.791230}, {-4.377930, -2.640380, -5.756230}, {-7.170900, -1.768550, -5.756230}};
        lootPosZombie = {{-5.019530, -5.392090, -0.886223}, {3.147460, -3.767580, -0.886223}, {6.397460, 4.263670, -0.886223}, {3.108890, 2.928960, -0.886223}, {-5.542480, -4.600830, -4.871220}, {2.733400, -5.774410, -4.871220}, {6.418460, -0.166992, -4.871220}, {3.305180, 4.541020, -4.871220}};
        lootPosSmall = {{-0.602051, 2.692140, -5.486230}, {2.070800, 1.984860, -5.196220}, {1.377440, 7.897220, -5.016220}, {3.280760, -1.517820, -4.756230}, {2.793950, -1.908450, -4.756220}, {1.190430, -1.976320, -4.756200}, {4.034180, -5.815920, -5.306210}, {1.461430, -6.279790, -5.016210}, {-4.825200, -2.663090, -1.781220}, {1.165040, 1.125000, -1.191220}, {2.734860, 0.744873, -0.701225}, {5.040530, -2.609380, -1.781220}, {5.002930, 2.034910, -1.781220}, {2.898440, 5.786130, -1.371220}, {1.444820, 6.518310, -1.311230}, {1.777340, 7.880130, -1.791230}, {5.819340, 5.909670, -1.411220}, {-3.410160, 1.261230, -1.781230}, {-7.378910, -1.247560, -5.286220}};
    };

    class Land_HouseB_Tenement: Office {
        lootPos = {{2.390630, 4.803220, -19.824499}, {-10.204100, -0.488770, -20.344500}, {4.656250, -2.125000, -20.344500}, {7.277340, 11.595700, -20.804501}, {-4.508540, 5.106450, -19.824499}, {5.118650, 12.029800, -20.804501}, {13.562500, 12.163100, -20.804501}};
        lootPosZombie = {{-10.750000, 5.900880, -19.909500}, {-9.997560, 5.925290, -19.909500}, {-8.122070, 5.978520, -19.909500}, {-7.314450, 6.008790, -19.909500}, {5.538820, 10.632800, -19.909500}, {4.282470, 8.729000, -19.909500}};
        lootPosSmall = {{-1.777100, 4.578610, -19.824499}, {-0.338623, 4.803220, -19.824499}, {-11.098600, -0.365234, -20.344500}, {2.385740, 5.158690, -20.224501}, {14.220200, 4.918950, -20.394501}, {6.725100, 11.689500, -20.344500}, {3.291500, -1.900880, -20.344500}, {12.960200, 10.047900, -20.804501}, {13.372600, 0.939453, -20.804501}};
    };

    class land_a_hospital: Hospital {
        lootPos = {{17.665001, -4.671880, -7.256600}, {-20.713900, -1.480470, -7.256600}, {-15.692400, 8.608890, -7.256600}, {-15.606400, 1.955570, -6.826600}, {-16.213900, 2.270510, -7.256600}, {-8.686520, 4.191890, -3.757600}, {14.244100, -3.985350, -3.757600}, {21.569300, 5.164550, 1.190510}, {18.377899, 2.408690, 6.252400}, {-15.335900, -1.254390, 3.404580}, {-20.325199, 0.410156, -3.827610}};
        lootPosZombie = {{9.844730, 0.953613, -6.381600}, {0.540039, 1.208010, -6.381600}, {-20.782200, 1.935550, -6.381600}, {-9.540040, 8.612790, -6.381600}, {15.883800, 3.416990, -2.882600}, {-8.086910, 1.406740, -2.882600}, {11.008800, -1.447750, -2.882600}};
        lootPosSmall = {{9.977540, -0.814453, -7.256600}, {-19.614300, 1.838870, -7.166600}, {-19.605499, 1.608400, -6.786600}, {-19.583000, 4.917480, -6.786600}, {-19.557600, 4.741700, -6.026600}, {-22.198200, 9.590330, -7.256600}, {-12.337900, 9.538570, -6.826600}, {-3.234380, 6.017580, -6.826600}, {-13.626000, 3.042480, -6.046600}, {2.864260, -1.686040, -6.646600}, {-5.585940, 1.382320, -3.757600}, {-4.057620, -2.485840, -3.757600}, {-11.842800, 5.155760, -2.597600}, {-5.571290, -3.172360, -2.597600}, {-5.653320, 5.014160, -2.597600}, {-12.543900, -2.338380, -3.687600}, {-12.580100, -1.326170, -3.307600}, {-12.592800, -1.562990, -2.927600}, {-12.616200, -2.248050, -2.167600}, {-12.565400, 2.412600, -2.547600}, {14.872100, 3.968750, 3.660540}, {16.903299, -1.338380, 4.016690}, {21.317400, 4.889160, 6.252400}, {-4.004880, 7.898930, -3.827610}};
    };

    class Land_Panelak: Office {
        lootPos = {{-3.767090, -5.579100, 0.071423}, {-6, -5.170900, 0.071423}, {-4.867190, -3.305180, 0.071423}, {-5.750980, 1.511720, 0.071423}, {3.954830, -4.830080, 2.771440}, {4.872800, 1.518550, 2.771440}, {6.073240, -5.466800, 2.771440}};
        lootPosZombie = {{0.657227, -3.121090, 0.946423}, {-2.285640, -6.882810, 0.946423}, {-6.310550, -5.419430, 0.946423}, {-4.517090, 3.017580, 0.946423}, {-0.828613, -3.014650, 3.646440}, {2.239750, -6.208010, 3.646440}, {6.849610, -4.812500, 3.646440}, {4.649170, 2.846680, 3.646440}, {4.592290, -2.559570, 3.646440}};
        lootPosSmall = {{-4.057130, -4.554690, 1.211420}, {-4.038570, -4.710940, 0.071421}, {-5.520020, -6.455080, 0.071421}, {-3.987300, -3.069340, 0.761421}, {-3.990720, -3.843750, 1.291420}, {-4.094970, -2.156250, 0.071421}, {-5.011720, 1.914060, 0.071421}, {-4.146000, 1.428710, 0.391421}, {1.373540, -5.006840, 2.771440}, {4.116700, -7.483400, 2.771440}, {4.241700, -3.692870, 3.001440}, {5.166020, -3.733400, 3.401440}, {4.151370, 1.270510, 2.771440}, {4.668460, 1.744140, 3.431440}, {5.697750, -6.447270, 2.771440}};
    };

    class Land_Panelak2: Office {
        lootPos = {{0.538330, 2.049800, -1.291370}, {4.879390, 1.902340, 5.466650}, {4.710450, -3.021970, 5.466650}, {6.015140, -5.861330, 5.466650}, {3.883300, -4.723140, 5.466650}};
        lootPosZombie = {{0.611328, -3.389650, -1.753590}, {0.584473, -3.448730, 0.946428}, {0.673340, -3.111330, 3.585970}, {-0.513428, -3.330570, 6.311650}, {6.309330, -4.922360, 6.311650}, {5.068600, 3.121580, 6.311650}, {3.861080, -7.188480, 6.311650}};
        lootPosSmall = {{4.852050, -3.704100, 6.696650}, {4.382810, -3.688480, 6.096650}, {5.229000, 1.640630, 6.246650}, {4.623540, 1.408200, 6.246650}, {5.413820, -5.541990, 5.796650}, {1.202150, -4.936520, 5.476650}};
    };

    class Land_Shed_Ind02: Industrial {
        lootPos = {{3.398930, 9.218750, -4.675960}, {1.295410, 0.227539, -4.675960}, {-0.458984, 11.693400, -1.286380}, {-4.008790, -8.427730, -1.297210}};
        lootPosZombie = {{-3.951660, 9.921880, -0.406006}, {4.713870, -9.100590, -0.399109}, {-3.699710, -7.852540, -3.750980}, {2.208980, 10.040000, -3.750980}};
        lootPosSmall = {{-3.660640, -0.253906, -4.665990}, {4.448730, 9.925780, -4.665990}, {-0.209961, -0.124023, -4.665990}, {4.893070, -0.166992, -1.297360}, {-3.748050, 12.123000, -1.286740}};
    };

    class Land_Shed_wooden: Residential {
        lootPos = {{1.268070, -0.361328, -1.291530}, {-0.342773, 1.029300, -1.291530}};
    };

    class Land_HouseBlock_A1_1: Residential {
        lootPos = {{-3.528810, 0.158936, -4.743650}, {-3.561520, -2.334840, -4.731060}};
    };

    class Land_Shed_W01: Industrial {
        lootPos = {{-1.462890, -0.122070, -1.411290}};
        lootPosZombie = {{0.387207, -2.178220, -0.538036}};
    };

    class Land_HouseV_1I1: Residential {
        lootPosZombie = {{-0.789551, -2.143070, -1.949440}};
        lootPosSmall = {{0.728516, -2.015140, -2.862350}};
    };

    class Land_Tovarna2: Industrial {
        lootPos = {{-2.022220, 7.872560, -5.629330}, {-12.210700, -8.155270, -5.624690}, {-12.211200, 7.799800, -5.629330}, {-8.998050, 7.721680, -2.311350}, {-6.540770, 8.804690, -2.311560}, {-12.690700, 8.049320, 1.586610}, {-9.064210, 8.106450, 1.586610}, {-5.394530, 9.027830, 1.561740}, {-8.264650, -0.520508, 0.376840}, {-3.839840, 4.991210, -2.311560}, {-6.641600, 8.031740, -5.629330}, {-3.317630, -1.807620, -5.594920}, {-6.663820, 7.578610, 1.561740}, {-12.800000, 4.306640, 1.586610}, {-12.807400, -0.535156, 0.374299}, {-12.432400, 5.159180, -2.311350}, {-12.863500, 1.781740, -5.619330}, {-3.195070, -8.497070, -5.630910}, {6.438720, -3.481450, -4.628840}, {9.979980, -2.350590, -4.626040}};
        lootPosZombie = {{2.074220, 8.085940, -4.686010}, {-8.604000, 8.225590, -4.684330}, {-8.790530, 6.474610, -4.684330}, {-12.786400, 2.261720, -1.356350}, {-4.004150, 8.898440, -1.356560}, {-12.734600, 2, 2.541610}, {-3.982180, 5.146970, 2.496740}};
        lootPosSmall = {{-3.229740, 9.696780, 1.561740}, {-10.268300, 8.873540, 1.586610}, {-13.298100, 7.099120, -2.311350}, {-7.510010, 9.643070, -2.311560}, {-8.136230, 5.606930, -5.629330}, {-13.211200, 0.257813, -5.629330}, {2.414310, -2.054690, -5.626890}, {1.641850, 8.758790, 0.374298}, {-13.242700, -8.984380, 3.374300}, {-4.927000, 0.368164, 0.372077}, {-3.882080, -3.816410, 6.627950}, {-7.472410, 4.503910, 1.561740}, {-8.288330, 4.200680, 1.586610}, {-13.294400, -9.015140, 0.374299}, {-7.386720, 4.534180, -2.311560}, {-5.281250, 2.875000, -5.629330}, {2.426270, -8.756840, -5.621540}};
    };

    class Land_rail_station_big: Office {
        lootPos = {{2.119140, -0.132080, -4.984390}, {0.712402, 0.718994, -4.984390}, {2.456540, 3.805660, -4.984390}, {7.459470, 1.496830, -5.044380}};
        lootPosZombie = {{-5.021480, 5.463380, -4.169380}, {8.163090, -0.947998, -4.169380}, {4.430180, -4.297610, -4.169380}, {-9.570800, -4.609130, -4.169380}};
        lootPosSmall = {{1.816410, 0.774170, -4.054390}, {2.746090, 0.869385, -4.054380}, {-5.169430, -3.435550, -4.984390}, {9.250000, 0.421631, -5.044380}, {-6.540040, -4.096920, -5.044390}};
    };

    class Land_Ind_Vysypka: Industrial {
        lootPos = {{1.501950, -15.928700, -4.966300}, {1.882080, 6.038090, -4.978560}, {-8.421880, 10.010300, -4.979090}, {1.219480, 13.216800, -4.979660}, {-7.095950, 26.037600, -4.996750}};
        lootPosZombie = {{1.584720, 2.127930, -4.093290}, {1.996580, -12.537100, -4.091670}, {-7.511470, -5.004880, -4.093270}};
        lootPosSmall = {{2.545900, -16.595200, -4.976390}, {-8.724850, -22.131800, -4.978060}};
    };

    class Land_A_MunicipalOffice: Residential {
        zombieChance = 0.400000;
        minRoaming = 3;
        maxRoaming = 9;
        zombieClass = {"z_soldier", "z_soldier_heavy", "z_policeman"};
        lootChance = 0.400000;
        lootPos = {{-4.661130, -6.271730, -18.429001}, {3.316410, -5.774170, -18.429001}, {-0.207520, -6.486820, -18.429001}, {-9.724120, -4.887450, -3.789030}, {-9.578130, 3.556150, -3.789030}, {-7.167970, 11.073700, -3.789030}, {5.074220, 11.183800, -3.789030}, {9.320800, 5.386230, -3.789030}, {9.653320, -4.820560, -3.789030}, {3.235350, -0.105957, -0.169027}, {4.852050, -3.690190, -0.169027}, {-0.801270, -7.890870, -0.169027}, {-4.408200, -4.917720, -0.169027}, {-4.907710, -2.231690, -0.169027}};
        lootPosZombie = {{-3.048830, -6.009030, -17.554001}, {2.268070, -6.875240, -17.554001}, {0.310059, 10.139600, -17.549101}, {-0.589355, 10.139400, -17.549101}};
        lootPosSmall = {{4.345210, -8.815670, -18.438999}, {-1.067870, -5.114990, -18.438999}, {1.329100, 9.869380, -18.441299}, {-1.543950, 9.906490, -18.435301}};
    };

    class Land_A_Office01: Office {
        lootPos = {{-7.849120, 6.385500, -4.528000}, {3.844240, 3.270510, -4.528000}, {-0.038330, 3.517330, -4.528000}, {5.376950, 5.633790, -4.528000}, {15.539300, -1.900150, -4.528000}, {13.805700, -2.381100, -4.528000}, {10.114000, 3.448490, -4.528000}, {10.300800, 6.324950, -4.528000}, {1.710210, 1.666750, -4.528000}, {1.580320, 5.876710, -2.028000}, {-0.599854, 7.089840, -2.028000}, {3.877690, 6.842290, -2.028000}, {-7.670900, 6.724850, -2.038000}, {-4.729000, 4.195560, -2.028000}, {-7.930910, 3.204100, -2.038000}, {10.235400, -1.918700, -2.018000}, {6.981200, -4.309330, -2.038000}, {15.407500, 6.031980, -2.038000}, {13.928500, 3.406490, -2.038000}, {0.163086, 3.432860, 0.472002}, {7.138920, 3.648440, 0.471998}, {1.719730, -1.409670, 6.724910}, {-0.443359, 0.614990, -2.028000}, {-5.221440, -3.699710, -2.028000}};
        lootPosZombie = {{-0.440674, 7.068850, -3.653000}, {14.813700, 4.056880, -1.153000}, {8.789060, -1.705570, -1.153000}, {2.571780, 3.364010, -1.153000}, {-7.412110, 4.162350, -1.153000}, {-12.918700, 1.208250, -1.153000}, {-2.673830, 3.980710, 1.347000}, {2.061280, 1.360350, 1.347000}, {2.145260, 7.030270, -3.653000}, {12.056200, -3.653080, -3.653000}, {8.427490, 3.861080, -3.653000}};
        lootPosSmall = {{3.503420, 5.280270, -3.668000}, {5.682860, 4.958980, -4.048000}, {0.895508, 4.985110, -3.288000}, {2.420170, 4.982910, -2.908000}, {15.883800, -2.622560, -2.908000}, {4.740720, 6.753910, -0.938002}, {7.695070, -0.465332, -1.618000}, {10.734100, -1.909180, -1.158000}, {6.342290, -2.732420, -0.398003}, {-4.865720, 7.161870, -0.988003}, {-4.271730, 4.220700, -0.778002}, {-4.565430, 5.481930, -1.348000}, {-8.213870, 2.049320, -2.028000}, {12.663100, 2.833980, -1.918000}, {12.889200, 2.821780, -0.778002}, {11.528100, 7.088870, -1.338000}, {11.342800, 5.023440, -1.158000}, {11.636000, 6.349370, -1.338000}, {-3.802000, 4.135250, 1.712010}, {0.720947, 3.559570, 0.952003}, {-3.780760, 4.447270, 0.952003}, {10.736300, 3.288330, -3.668000}, {6.461910, 5.130130, -2.908000}, {7.039060, 6.255370, -4.098000}, {6.688230, 5.811770, -3.818000}, {10.705600, 4.131350, -3.288000}, {2.867920, -0.489014, 6.724910}};
    };

    class Land_A_Office02: Office {
        lootPos = {{19.807600, 3.261230, 5.383940}, {0.270020, 0.045898, 5.383940}, {5.041500, -4.854000, -8.171090}, {-0.263184, -5.152590, -8.171050}};
        lootPosZombie = {{-14.765100, 3.866940, 6.258940}, {-23.528799, 2.587890, -7.262660}, {2.230960, -8.429200, -7.277570}, {23.479000, 2.608400, -7.262670}};
        lootPosSmall = {{-0.112305, -4.352540, -8.170730}, {-0.813965, -4.143550, -7.790430}, {4.104000, -7.270510, -8.171100}, {10.742700, 2.169920, 5.383940}, {21.599100, 2.561040, 5.423940}, {-4.027830, 2.466800, 5.383940}, {-17.323200, 1.290280, 8.716840}, {-18.073200, 3.386230, 8.716840}};
    };

    class land_barn_metal: Industrial {
        lootChance = 0.400000;
        lootPos = {{-8.185060, 19.902300, -5.442140}, {4.701170, 17.284901, -5.442140}, {1.317380, -7.949460, -5.442140}, {-7.743160, -20.595501, -5.442140}};
        lootPosZombie = {{-3.317380, -3.635740, -4.567140}, {0.723633, 3.135500, -4.567140}, {3.999020, -2.877440, -4.567140}, {10.629400, -2.917970, 6.462880}};
        lootPosSmall = {{10.531300, 22.677700, 5.587880}, {-9.651370, 1.552250, 5.587880}, {-9.485350, -25.002199, 5.587880}, {2.832030, -25.170401, 5.587880}};
    };

    class Land_A_BuildingWIP: Industrial {
        lootChance = 0.500000;
        lootPos = {{-15.487100, -9.755000, -6.536980}, {-10.404300, -9.766970, -6.532130}, {-12.009800, -5.502080, -6.539360}, {-21.568100, -9.694090, -6.540670}, {-23.756300, 8.183470, -6.458110}, {2.825440, 11.382200, -6.478260}, {-7.496340, -9.246090, -6.521150}, {6.212160, 7.735600, -6.416150}, {-9.295410, 0.683716, -6.537780}, {16.837601, 2.031860, -2.542910}, {4.776610, -9.356810, -1.503890}, {-20.376200, -2.863890, -2.531820}, {-14.356400, -9.686040, -2.534100}, {-24.172400, 7.654050, -2.531820}, {1.157960, 8.035520, -2.531820}, {-24.090099, 11.422700, 1.473640}, {-22.121799, 11.844200, 1.477860}, {-22.784901, 10.418900, 1.474020}, {-8.667970, 5.812380, 1.473960}, {-11.485600, -2.294190, 2.506740}, {-15.694800, -13.523600, 5.466820}, {-8.001710, -1.076780, 5.311470}, {8.666260, -8.145140, 5.344000}, {11.526900, 2.509770, -6.522370}, {-15.926000, -17.571301, -6.531930}, {-23.839100, 0.109863, -6.476380}, {-24.295700, 2.291990, -2.531820}, {-7.685300, 11.990200, -2.531820}, {-17.731400, 1.812990, -2.531820}, {2.941160, 6.977540, 1.475790}, {-9.390140, -9.624510, 1.474280}, {-24.131100, 9.476560, 5.462420}};
        lootPosZombie = {{2.206300, 0.501709, -5.536590}, {-4.659910, 0.766846, -5.530390}, {-17.952400, -3.867800, -5.634850}, {-14.401600, -16.052200, -3.641490}, {-14.268600, -16.674999, 0.360519}, {-14.693400, -16.018999, 4.360470}, {-10.716100, 3.772340, 2.377960}, {-16.875999, -2.250980, 2.368700}, {-16.892799, 10.221600, -1.656820}, {1.670650, 10.368900, -1.656820}, {-14.369900, -7.900630, -1.658940}};
        lootPosSmall = {{-10.437700, -8.034180, -6.540070}, {-15.967500, -6.709590, -6.540140}, {-15.828900, 7.374510, -6.469460}, {-6.891360, -5.306150, -6.529940}, {-7.372310, 0.360840, -5.627000}, {-20.345501, -4.819700, -2.241820}, {-13.941900, -5.025020, -2.532680}, {-6.243900, 11.751800, -1.501820}, {-23.121300, 12.512800, 1.474770}, {-24.580601, 9.801150, 1.474030}, {4.637940, -0.358765, 2.177240}, {-5.925050, 11.848500, 2.500790}, {-11.241500, 4.787960, 6.377650}, {-24.775600, -10.026500, 5.462640}, {5.754640, -9.760010, 1.474250}, {-23.031300, 2.871580, -5.431370}, {-0.398193, 7.372560, -6.525350}, {13.678000, 1.893070, -6.542510}, {-7.793210, -9.535640, -2.533760}, {15.315400, 11.478000, -2.541820}, {-19.863300, 12.314900, -2.541820}, {-21.028601, -11.563000, 5.466910}};
    };

    class Land_Church_01: Church {
        lootPos = {{-6.928220, 0.516602, -4.219100}};
        lootPosZombie = {{4.186280, -4.375490, -5.509330}, {7.237920, 4.857420, -5.704950}};
        lootPosSmall = {{-7.273320, -1.168950, -4.227260}};
    };

    class Land_Church_03: Church {
        lootPos = {{-0.665527, -3.028320, -14.302100}, {2.907710, 3.074220, -14.302100}, {9.753420, 0.011719, -13.758800}, {4.746090, 8.158200, -14.302100}, {-2.419430, 1.721680, -14.304900}};
        lootPosZombie = {{-8.014650, -4.292970, -13.427100}, {-8.010740, 4.112300, -13.427100}, {6.230470, -0.046875, -13.419900}, {-4.297850, 0.004883, -13.419900}};
        lootPosSmall = {{-0.791992, 2.211910, -13.732100}, {2.939450, -1.597660, -13.734900}, {6.211910, 3.485350, -13.732100}, {6.567870, -3.551760, -14.302100}, {-0.741211, -8.756840, -14.302100}, {-0.126465, 5.944340, -14.302100}, {-1.148930, -3.641600, -14.302100}, {-2.714840, -1.560550, -13.734900}};
        hangPos = {{1.721680, -8.397710, -0.172569}, {2.088380, -14.423600, -0.275360}, {-13.715800, -10.480800, -0.795174}, {-12.907200, -16.410500, -0.895065}};
    };

    class Land_Church_02: Church {
        lootPos = {};
        maxRoaming = 2;
    };

    class Land_Church_02a: Church {
        lootPos = {};
        maxRoaming = 2;
    };

    class Land_Church_05R: Church {
        lootPos = {};
        maxRoaming = 2;
    };

    class Land_Mil_Barracks_i: MilitarySpecial {
        lootPos = {{4.564940, -2.673830, -1.148220}, {0.312988, 1.544920, -1.098240}, {-2.953610, 1.494140, -1.118230}, {-3.391110, -1.990230, -0.708221}, {-6.686040, -1, 0.091766}, {-8.942380, -2.524410, -1.098240}, {-0.596680, -1.496090, -1.108250}, {3.034670, -1.005860, 0.091766}, {-0.214355, -2.195310, 0.091766}, {-8.930180, 1.539060, -1.098240}};
        lootPosZombie = {{-7.971190, 0.088867, -0.223236}, {-5.290530, -0.952148, -0.223236}, {-1.970700, -1.595700, -0.223236}, {1.481930, -2.203130, -0.223236}, {5.244630, -2.056640, -0.223236}};
        lootPosSmall = {{3.880370, -0.905273, -0.358246}, {6.482420, -2.513670, -0.978241}, {3.036620, -1.784180, -0.698242}, {-0.179199, 0.488281, -1.108250}, {-3.207030, -0.101563, -1.118230}, {-3.370610, -1.088870, 0.091766}, {-6.792970, -2.630860, -1.098240}, {-9.295410, -0.212891, -1.098240}};
    };

    class Land_A_TVTower_Base: Industrial {
        lootPos = {{-0.982422, -1.926270, -2.215730}, {-2.017820, -4.241700, -2.219180}, {-0.759277, 1.421390, -2.215730}};
    };

    class land_mil_house: Military {
        lootPos = {{-14.334500, 1.244140, -4.946230}, {-7.878420, 1.451170, -4.156220}, {-7.776860, -5.342770, -0.886230}, {-4.435060, -5.335940, -0.886230}};
        lootPosZombie = {{-11.292500, 2.850590, -4.031220}, {-9.331540, -1.834960, -4.031220}, {-10.500500, -4.770510, -0.011231}, {-2.376950, -1.719730, -0.011231}};
        lootPosSmall = {{-10.469200, 4.408200, -4.946230}, {-10.369600, 1.262700, -4.466220}, {-6.479980, 4.928710, -4.986210}, {-13.320800, -0.803711, -4.986210}, {-13.791000, -6.278320, -0.886230}, {-13.204600, -5.364260, -0.196228}, {-9.451660, -6.028320, -0.886230}, {-0.253418, -4.124020, -0.886230}, {-4.756350, -0.022461, -0.886230}, {-6.020020, -0.041016, -0.426239}, {-2.288570, 0.575195, -0.876221}};
    };

    class Land_Misc_Cargo1Ao: Industrial {
        lootPos = {{0.488770, -1.613770, -1.092240}, {0.012207, 2.192630, -1.092240}, {0.009766, 0.190430, -1.092240}};
    };

    class Land_Misc_Cargo1Bo: Industrial {
        lootPos = {{-0.322021, 1.685550, -1.092220}, {0.548584, -1.962890, -1.092220}, {0.223389, -0.580078, -1.092220}};
    };

    class Land_ruin_01: Residential {
        lootPos = {{-4.319340, -0.115234, -1.455780}, {3.413090, 0.270508, -1.713650}, {3.002930, 3.427730, -1.557650}, {0.622070, -1.737790, -1.490480}};
    };

    class Land_wagon_box: Industrial {
        lootPos = {{0.542969, -3.894530, -0.776679}, {0.479980, -0.608398, -0.776638}, {0.515381, 3.038570, -0.776592}};
    };

    class Land_HouseV2_04_interier: Residential {
        lootPos = {{-5.088260, 3.138180, -5.739710}, {7.370610, 6.528810, -5.738730}, {1.752810, 3.707520, -5.739530}, {-3.751830, 7.162600, -5.738420}, {0.292725, 1.274410, -2.938090}};
        lootPosZombie = {{-1.186650, 2.893550, -4.864790}, {3.332030, 6.440920, -4.863660}, {4.816160, 1.380860, -4.865290}};
        lootPosSmall = {{4.759400, 2.804200, -5.079790}, {4.933960, 2.563480, -5.079790}, {1.952150, 2.675290, -5.059560}, {0.668823, 2.562990, -5.749440}, {-3.714600, 7.078130, -4.988620}, {-3.318970, 6.684570, -4.988950}, {-2.872440, 6.926760, -5.298930}, {-3.952150, 2.854490, -5.199350}};
    };

    class Land_HouseV2_01A: Residential {
        lootPosZombie = {{-2.213130, -3.281740, -4.795210}};
        lootPosSmall = {{-3.539060, -3.297360, -5.557790}, {-0.759766, -3.950680, -5.565630}};
    };

    class Land_KBud: Residential {
        zombieChance = 0.300000;
        maxRoaming = 0;
        lootPos = {{-0.017090, 0.011475, -0.663670}};
    };

    class Land_A_Castle_Bergfrit: Residential {
        lootPos = {{0.018555, 1.916020, -2.836400}, {1.191410, -1.438480, -2.836400}, {-2.368160, 3.322750, -0.628571}, {2.361330, 3.867680, 1.839720}, {2.484380, -3.205570, 3.855410}, {-2.094730, -3.448730, 6.319030}, {-1.159180, 3.138670, 8.766910}, {1.747070, 1.268070, 8.766910}, {-0.540039, -2.352540, 8.766910}, {-1.622070, -4.279790, 13.480100}, {-2.230470, 4.824710, 16.856001}, {1.675780, -0.825195, 16.850500}};
    };

    class Land_A_Castle_Stairs_A: Residential {
        lootPos = {{0.697998, -1.793950, 0.726929}, {8.393800, 0.890625, 0.875122}, {8.172610, 1.489260, 7.025880}};
    };

    class Land_A_Castle_Gate: Residential {
        lootChance = 0.700000;
        lootPos = {{0.244141, -4.484860, -3.143620}, {-1.252930, 2.987790, -3.070280}, {4.506840, -3.311520, -2.948850}, {4.551760, 3.298340, -2.948580}, {7.948240, 1.408200, -2.910030}};
    };

    class Land_Mil_Barracks: Military {
        lootPos = {{-0.891113, -3.489260, -1.516330}, {-1.092040, 2.886720, -1.516330}, {-3.555910, 3.428710, -1.516330}, {-6.312990, 3.704100, -1.516330}, {-7.682620, -3.541020, -1.936340}, {-5.114750, -2.099610, -1.936340}, {0.247070, 3.573240, -1.936340}, {6.722170, -2.479490, -1.936340}, {5.416020, 3.993160, -1.936340}, {-6.349120, 3.901370, -0.726349}, {-3.586910, 2.825200, -0.726349}, {-1.042240, 3.399410, -0.726349}, {-3.751950, -3.259770, -0.726349}, {-0.864746, -3.886720, -0.726349}, {-3.525630, -2.448240, -1.936340}, {-6.063960, 2.574220, -1.936340}, {-0.935059, -4.050780, -1.936340}, {-1.395020, 3.899410, -1.936340}};
        lootPosZombie = {{-2.158450, -3.127930, -1.061340}, {2.132810, 3.243160, -1.061340}, {-6.206790, -0.125000, -1.061340}, {2.095210, -3.367190, -1.061340}};
        lootPosSmall = {{-6.457030, 2.031250, -1.796330}, {-3.512700, 1.982420, -1.796330}, {-1.147460, 1.987300, -1.796330}, {-0.911621, -1.875980, -1.796330}, {-3.815670, -1.902340, -1.796330}, {-6.524900, -1.864260, -1.796330}, {3.789790, -4.177730, -1.136350}, {5.328610, -4.190430, -1.136350}, {5.209230, -1.998050, -1.656340}, {6.541750, -1.997070, -1.656340}, {3.823240, -1.965820, -1.656340}, {6.892090, 2.934570, -1.846340}, {6.988770, 1.952150, -1.846340}, {6.982910, 2.231450, -1.466340}, {7.003910, 2.734380, -1.466340}, {6.967290, 3.019530, -1.086330}, {6.948240, 2.047850, -0.706329}, {4.367680, 3.130860, -0.396332}, {3.867680, 3.493160, -0.396332}, {3.845210, 3.496090, -1.866330}, {4.339840, 3.174800, -1.866330}};
    };

    class Land_Mil_Barracks_L: Military {
        lootPos = {};
    };

    class Land_Barn_W_02: Farm {
        lootPos = {{3.165040, 5.565430, -2.314090}, {3.359380, -0.152344, -2.313050}, {2.536130, -5.894530, -2.309570}, {-2.946290, -5.013670, -2.310060}, {-2.843750, 0.212891, -2.311830}, {-5.632810, 4.829100, -2.313630}};
    };

    class Land_sara_domek_zluty: Residential {
        maxRoaming = 1;
        lootPos = {{6.917240, 3.092770, -2.433720}, {6.528810, -0.521973, -2.433790}, {0.613037, 3.744630, -2.433700}, {-7.000240, -0.744141, -2.433730}, {-3.136720, 3.454590, -2.433640}, {-6.810550, -2.676760, -2.433850}};
        lootPosZombie = {{-5.434330, -2.467770, -1.558830}, {-2.595700, 2.128910, -1.558690}, {0.225830, 2.466310, -1.558700}, {6.023440, 1.649410, -1.558720}};
        lootPosSmall = {{7.266850, -0.882324, -2.433780}, {4.006840, 3.847660, -2.433720}, {-1.112550, 1.293950, -2.433820}, {-7.221920, -4.235840, -2.433860}};
    };

    class Land_HouseV_3I4: Residential {
        maxRoaming = 3;
        lootPosZombie = {{6.127200, 2.789060, -2.070730}, {-4.632080, 5.157710, -2.207790}};
    };

    class Land_Shed_W4: Residential {
        maxRoaming = 3;
        lootPosZombie = {{-1.360350, -5.736570, -0.566690}, {0.554688, -5.278810, -0.569374}};
    };

    class Land_HouseV_3I1: Residential {
        maxRoaming = 3;
        lootPosZombie = {{5.188960, -2.268190, -1.608050}, {-5.496580, -3.260380, -1.889400}};
    };

    class Land_HouseV_1T: Residential {
        maxRoaming = 3;
        lootPosZombie = {{-4.917970, 6.750980, -2.325350}, {3.494870, -1.744140, -2.405490}};
    };

    class Land_telek1: Industrial {
        maxRoaming = 3;
        lootPos = {};
    };

    class Land_Rail_House_01: Industrial {
        lootPos = {{-2.358640, 3.041990, -1.282660}};
        lootPosZombie = {{0.141846, 2.742680, -0.407660}};
        lootPosSmall = {{3.137450, 3.625490, -1.282660}};
    };

    class Land_HouseV_2I: Default {
        maxRoaming = 3;
        lootPos = {};
        lootPosZombie = {{-6.338380, -0.644531, -2.079410}, {-4.127930, -9.343750, -2.079410}};
    };

    class Land_Misc_deerstand: Hunting {
        zombieChance = 0.300000;
        lootChance = 0.500000;
        maxRoaming = 3;
        lootPos = {{-0.923828, -0.808594, 1.085390}, {0.419922, -0.237305, 1.085390}};
    };

    class Camp: Military {
        maxRoaming = 1;
        lootPos = {{0.833252, -1.522460, -1.159550}, {0.385010, 0.963867, -1.159550}};
    };

    class CampEast: Military {
        maxRoaming = 1;
        lootPos = {{-1.057130, -1.807620, -1.310490}, {0.627441, 1.833980, -1.310490}};
    };

    class CampEast_EP1: Military {
        maxRoaming = 1;
        lootPos = {{-0.670898, 0.954590, -1.310490}, {1.685060, -2.433840, -1.310490}, {-1.763180, -1.626460, -1.310490}};
    };

    class MASH: Hospital {
        maxRoaming = 1;
        lootChance = 0.400000;
        lootPos = {{1.182130, -1.650390, -1.177930}, {0.247070, 0.799316, -1.178030}};
    };

    class MASH_EP1: MASH {
    };

    class UH1Wreck_DZ: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0.600000;
        minRoaming = 4;
        maxRoaming = 8;
        lootPos = {};
    };

    class UH60Wreck_DZ: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0.600000;
        minRoaming = 4;
        maxRoaming = 8;
        lootPos = {};
    };

    class UH60_NAVY_Wreck_DZ: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0.600000;
        minRoaming = 4;
        maxRoaming = 8;
        lootPos = {};
    };

    class UH60_ARMY_Wreck_DZ: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0.600000;
        minRoaming = 4;
        maxRoaming = 8;
        lootPos = {};
    };

    class UH60_NAVY_Wreck_burned_DZ: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0.600000;
        minRoaming = 4;
        maxRoaming = 8;
        lootPos = {};
    };

    class UH60_ARMY_Wreck_burned_DZ: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0.600000;
        minRoaming = 4;
        maxRoaming = 8;
        lootPos = {};
    };

    class USMC_WarfareBFieldhHospital: MASH {
        minRoaming = 1;
        maxRoaming = 3;
        zombieClass = {"z_soldier", "z_soldier_heavy"};
        lootPos = {{-3.522460, -5.039310, 1.147260}, {2.366210, -4.522950, 1.147860}, {1.390630, -0.423096, 1.147460}, {1.142580, 5.009520, 1.147800}, {3.712400, 1.897950, 1.147880}};
    };

    class Land_Ind_Shed_02_main: Default {
        zombieChance = 0.300000;
        maxRoaming = 3;
    };

    class HouseRoaming: Residential {
        lootChance = 0.500000;
        zombieChance = 0.200000;
        maxRoaming = 2;
    };

    class FarmRoaming: Farm {
        lootChance = 0.300000;
        zombieChance = 0.400000;
        maxRoaming = 2;
    };

    class land_shed_m03: HouseRoaming {
        lootPosZombie = {{1.736570, -0.033203, -0.198479}};
    };

    class land_ind_workshop01_03: HouseRoaming {
        lootPosZombie = {{2.759520, 0.594727, -0.606018}, {2.772460, 2.892580, -0.606018}, {-3.540770, 5.023440, -0.606018}};
    };

    class Land_Shed_W03: HouseRoaming {
        lootPosZombie = {{0.350220, -2.352540, 0.015940}};
    };

    class Land_HouseV_1I3: HouseRoaming {
        lootPosZombie = {{2.034670, -1.044190, -1.258410}};
    };

    class Land_HouseV_1L1: HouseRoaming {
    };

    class Land_HouseV_1I2: Residential {
        lootPosZombie = {{0.911133, -4.502200, -1.351520}, {-3.389650, 2.330080, -1.353120}};
    };

    class Land_HouseV_2L: Residential {
        lootPosZombie = {{-4.256840, -3.862550, -3.113040}, {4.416990, 1.952390, -3.052040}};
        lootPosSmall = {{4.394040, 1.282960, -3.965350}, {4.129880, 2.522220, -3.955690}};
    };

    class Land_HouseV_2T1: Residential {
        lootPosZombie = {{-4.863280, 5.275390, -2.355360}, {6.105470, -3.551270, -2.355360}, {2.224850, -4.751950, -2.355360}};
    };

    class Land_houseV_2T2: Residential {
        lootPos = {{-3.490720, 1.017820, -4.035190}};
        lootPosZombie = {{-4.700930, 0.893921, -3.160190}, {6.194090, 4.907350, -3.992670}};
        lootPosSmall = {{2.860600, 4.330810, -4.659740}, {-0.222778, 4.349850, -4.657130}};
    };

    class Land_HouseV_3I2: HouseRoaming {
    };

    class Land_HouseBlock_A1: HouseRoaming {
    };

    class Land_HouseBlock_A1_2: HouseRoaming {
    };

    class Land_HouseBlock_A2: HouseRoaming {
    };

    class Land_HouseBlock_A2_1: HouseRoaming {
    };

    class Land_HouseBlock_A3: HouseRoaming {
    };

    class Land_HouseBlock_B1: HouseRoaming {
    };

    class Land_HouseBlock_B2: HouseRoaming {
    };

    class Land_HouseBlock_B3: Residential {
        lootPosZombie = {{0.878418, 5.691890, -6.384590}};
        lootPosSmall = {{2.412600, 5.168460, -6.949590}};
    };

    class Land_HouseBlock_B4: Residential {
        lootPosZombie = {{0.059570, -5.582520, -6.693120}, {-1.154300, 5.552250, -6.746330}};
        lootPosSmall = {{-0.069336, 4.822270, -7.281330}};
    };

    class Land_HouseBlock_B5: Residential {
        lootPosZombie = {{6.591800, 0.565430, -6.607030}, {-0.304932, -6.363280, -6.607010}};
    };

    class Land_HouseBlock_B6: Residential {
        lootPosZombie = {{-4.281740, 1.328610, -6.743700}, {-3.841310, -0.016357, -6.743650}};
    };

    class Land_HouseBlock_C1: HouseRoaming {
    };

    class Land_HouseBlock_C2: HouseRoaming {
    };

    class Land_HouseBlock_C3: HouseRoaming {
    };

    class Land_HouseBlock_C4: HouseRoaming {
    };

    class Land_HouseBlock_C5: HouseRoaming {
    };

    class Land_HouseV2_01B: Residential {
        lootPosZombie = {{-3.513180, -3.361330, -4.673520}, {9.736820, 3.376460, -5.234100}};
        lootPosSmall = {{-4.278810, -2.228520, -5.181730}};
    };

    class Land_Misc_Cargo1D: HouseRoaming {
    };

    class Land_HouseV2_03: HouseRoaming {
    };

    class Land_Ind_Shed_01_end: HouseRoaming {
    };

    class Land_A_statue01: HouseRoaming {
        zombieClass = {"zZombie_Base", "zZombie_Base", "z_teacher", "z_suit1", "z_suit2", "z_soldier", "z_soldier_heavy", "z_policeman"};
        minRoaming = 2;
        maxRoaming = 8;
    };

    class Land_Shed_W02: FarmRoaming {
    };

    class Grave: HouseRoaming {
        maxRoaming = 3;
    };

    class GraveCross1: HouseRoaming {
        maxRoaming = 2;
    };

    class GraveCross2: HouseRoaming {
        maxRoaming = 2;
    };

    class GraveCrossHelmet: Military {
        maxRoaming = 4;
    };

    class land_housev_1l2: Residential {
        lootPos = {{-2.588870, -4.858400, -0.789368}, {-2.588870, -4.858400, -0.789368}, {-2.376460, 0.373047, -0.799377}};
        lootPosZombie = {{1.887210, -3.359380, 0.085632}, {1.887210, -3.359380, 0.085632}, {1.684080, -0.298828, 0.085632}};
        lootPosSmall = {{-1.373540, -3.264650, -0.789368}, {4.483890, -3.063480, 0.040619}, {4.532710, -3.613280, 0.590637}, {-1.373540, -3.264650, -0.789368}, {4.483890, -3.063480, 0.040619}, {4.532710, -3.613280, 0.590637}, {4.291260, -1.024410, 0.060638}, {-0.199707, 3.287110, -2.929200}};
    };

    class land_misc_powerstation: Industrial {
        lootPos = {{2.987670, -5.020510, 1.547770}, {3.673710, 5.622070, -2.044070}};
        lootPosZombie = {{-1.063720, 6.636720, -1.119130}, {0.224365, -2.487300, -0.377583}, {-0.857544, 3.087890, -1.119050}};
        lootPosSmall = {{4.920170, 6.247070, -1.261790}, {1.625730, -6.454100, -1.134450}, {1.336670, -6.372070, -0.374413}, {-3.208250, -6.501950, 0.315748}, {-3.849490, -6.262700, -1.164020}, {-1.356080, -6.387700, -0.374122}, {-0.895142, -6.394530, -0.374130}, {2.303830, 2.213870, -2.043940}, {0.080811, -0.056641, -1.204000}, {1.986570, 3.491210, -0.623982}};
    };

    class land_housev_3i3: Residential {
        lootPos = {{-4.233400, 0.291992, -1.470640}, {1.100590, -2.998540, -0.790649}, {3.530270, -2.340330, -1.742650}};
        lootPosZombie = {{-4.184570, -1.681640, -0.525635}, {0.419922, -1.007810, -0.525635}, {4.350590, -1.379390, -0.987640}};
        lootPosSmall = {{-4.856450, 0.550293, -0.340637}, {2.212890, 0.783691, -0.160645}, {-0.833008, 0.554199, -0.620636}, {1.797850, -2.999020, -1.090640}, {5.060550, -2.681640, -1.562650}};
    };

    class land_mil_guardhouse: Military {
        lootPos = {{4.653810, -3.619140, -1.462770}, {2.997560, 3.541020, -0.712769}};
        lootPosZombie = {{-1.731930, -1.906250, -0.567780}, {3.260250, -1.558590, -0.567780}};
        lootPosSmall = {{-0.798828, -3.517580, -1.462770}, {3.730470, -3.959960, -1.322780}, {-0.283203, -3.157230, -1.322780}, {-0.996582, 3.814450, -1.142790}, {-1.330080, 2.265630, -0.762787}, {0.289063, 3.662110, -0.082794}, {-1.173830, -0.112305, -1.482790}};
    };

    class Land_Shed_W02_EP1: FarmRoaming {
    };

    class Land_MBG_ApartmentsOne_W: HouseRoaming {
    };

    class Land_MBG_ApartmentsTwo_P: HouseRoaming {
    };

    class Land_MBG_ApartmentsTwo_G: HouseRoaming {
    };

    class Land_MBG_ApartmentsTwo_B: HouseRoaming {
    };

    class Mass_grave_DZ: HouseRoaming {
        zombieClass = {"zZombie_Base", "z_hunter", "z_hunter", "z_hunter", "z_villager1", "z_villager2", "z_villager3", "z_doctor", "z_soldier_pilot", "z_soldier_heavy"};
        minRoaming = 8;
        maxRoaming = 16;
        lootChance = 1;
        zombieChance = 1;
    };

    class HMMWVWreck: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0;
        minRoaming = 1;
        maxRoaming = 2;
        lootPos = {};
    };

    class UralWreck: Military {
        zombieClass = {"z_soldier_pilot", "z_soldier_heavy"};
        zombieChance = 0.300000;
        lootChance = 0;
        minRoaming = 1;
        maxRoaming = 2;
        lootPos = {};
    };

    class SKODAWreck: Residential {
        zombieClass = {"zZombie_Base", "z_hunter"};
        zombieChance = 0.300000;
        lootChance = 0;
        minRoaming = 1;
        maxRoaming = 2;
        lootPos = {};
    };

    class UAZWreck: Residential {
        zombieClass = {"zZombie_Base", "z_hunter"};
        zombieChance = 0.300000;
        lootChance = 0;
        minRoaming = 1;
        maxRoaming = 2;
        lootPos = {};
    };

    class datsun01Wreck: Residential {
        zombieClass = {"zZombie_Base", "z_hunter"};
        zombieChance = 0.300000;
        lootChance = 0;
        minRoaming = 1;
        maxRoaming = 2;
        lootPos = {};
    };

    class hiluxWreck: Industrial {
        zombieClass = {"zZombie_Base", "z_hunter"};
        zombieChance = 0.300000;
        lootChance = 0;
        minRoaming = 1;
        maxRoaming = 2;
        lootPos = {};
    };

    class datsun02Wreck: Military {
        zombieClass = {"zZombie_Base", "z_hunter"};
        zombieChance = 0.300000;
        lootChance = 0;
        minRoaming = 1;
        maxRoaming = 2;
        lootPos = {};
    };

    class Land_Ind_Shed_01_EP1: Default {
        zombieChance = 0.300000;
        maxRoaming = 3;
    };

    class Land_Ind_FuelStation_Build_EP1: IndustrialFuel {
        lootChance = 0.500000;
        zombieClass = {"zZombie_Base", "zZombie_Base", "z_teacher", "z_suit1", "z_suit2"};
        lootPos = {{-1.345210, 1.406980, -1.336110}, {2.270510, -0.949951, -1.336110}, {-2.231930, -1.146000, -1.335890}, {-0.185059, 0.775146, -1.336090}};
    };

    class Land_ibr_FuelStation_Build: IndustrialFuel {
        lootChance = 0.500000;
        zombieClass = {"zZombie_Base", "zZombie_Base", "z_teacher", "z_suit1", "z_suit2"};
        lootPos = {{-1.345210, 1.406980, -1.336110}, {2.270510, -0.949951, -1.336110}, {-2.231930, -1.146000, -1.335890}, {-0.185059, 0.775146, -1.336090}};
    };

    class Land_Mil_ControlTower_EP1: Military {
        lootChance = 0.400000;
        lootPos = {{5.533690, 3.643550, -5.463680}, {7.672360, 3.681150, -1.068700}, {7.532710, -1.700680, -1.068700}, {4.552250, 1.641110, 2.921480}, {10.129200, 3.695800, -9.628690}, {0.491943, 6.154300, -9.628690}, {7.549560, 1.745120, -0.378696}, {5.402340, -1.712890, -0.378696}};
    };

    class Land_Mil_hangar_EP1: MilitaryIndustrial {
        maxRoaming = 3;
        lootPos = {{-9.832030, -12.409700, -5.381290}, {10.548800, -12.131800, -5.381290}, {13.002000, 0.021484, -5.381290}, {-13.388700, 0.250000, -5.381290}, {13.320300, 20.517599, -5.381290}, {-13.186500, 19.983900, -5.381290}, {0.019531, 21.507799, -5.381290}, {0.497070, 11.546900, -5.381290}, {-0.836914, -0.634277, -5.381290}, {0.177734, -11.682100, -5.381290}};
    };

    class Land_Mil_Guardhouse_EP1: Military {
        lootPos = {{-3.058590, 1.765140, -1.590030}, {-3.168950, 3.453610, -1.590030}, {-3.199220, -0.323242, -1.590030}};
    };

    class Land_Mil_Repair_center_EP1: Industrial {
        lootPos = {{-2.424320, -0.735840, -1.528470}, {-2.430180, 2.839840, -1.528470}};
    };

    class Land_Ind_PowerStation_EP1: Industrial {
        lootPos = {{4.042480, -3.491700, -1.265470}, {3.864500, 3.524900, -1.281120}};
    };

    class land_repair_center: Industrial {
        lootPos = {{0.327148, 1.654790, -2.378880}, {-2.355470, -0.163574, -1.719270}, {-2.410160, 4.456540, -1.719270}};
        lootPosZombie = {{0.982422, -0.634277, -1.513890}};
        lootPosSmall = {{1.804690, 2.017090, -1.648900}, {1.603520, 4.571780, -0.862885}, {0.771484, 4.557130, -0.482880}, {1.563480, 4.504390, -1.242890}};
    };

    class Land_Ind_TankBig: Industrial {
        lootChance = 0.100000;
        lootPosSmall = {{-1.298100, 3.274410, 5.346280}, {3.496090, -3.025390, 5.346280}};
    };

    class Land_Ind_Coltan_Main_EP1: Industrial {
        lootPos = {{4.571780, -9.467160, 2.368330}, {-3.412230, 16.670500, -6.385710}, {-2.180050, 4.858400, -6.331670}, {-1.815800, 7.865230, -6.331670}, {6.597170, 16.137199, 0.928326}, {7.280760, 16.157301, 4.848330}};
    };

    class Land_A_Mosque_big_hq_EP1: Church {
        lootPos = {{4.065920, -6.906740, -9.319990}, {5.251950, 4.076660, -9.319990}, {5.702640, 7.537600, -4.047520}, {-4.788570, -7.006840, -4.047530}, {3.932620, 9.418460, 0.567287}, {0.882324, -0.134766, -9.319990}};
    };

    class Land_A_Mosque_big_addon_EP1: Church {
        lootPos = {{-5.107910, -1.750980, -6.412400}, {6.309080, -3.397950, -6.385540}, {6.871090, 2.819340, -6.385540}, {2.141110, -4.380860, -6.354630}, {4.864750, 4.655760, -6.385540}, {-4.720210, -10.512700, -1.156050}};
    };

    class Land_A_Mosque_big_wall_EP1: Church {
        lootPos = {{2.815430, 3.945800, -2.028440}, {-4.945310, 3.606450, 5.181650}};
    };

    class Land_A_Mosque_small_1_EP1: Church {
        lootPos = {{2.451170, 3.390630, -2.046040}, {0.183105, 0.826172, -2.046050}, {6.664060, 4.117190, -1.943700}, {0.497070, -1.333010, -1.696030}};
    };

    class Land_A_Mosque_small_2_EP1: Church {
        lootPos = {{1.334960, -0.726074, -2.485350}, {-0.794922, -1.744140, -2.485380}};
    };

    class Land_Mil_Barracks_i_EP1: MilitarySpecial {
        lootChance = 0.200000;
        maxRoaming = 2;
        lootPos = {{5.156250, -2.303710, -1.098240}, {1.056640, -2.455080, -1.098240}, {-0.841797, -2.361330, -1.098240}, {-4.035160, -2.318360, -1.098240}, {-8.496090, -2.338380, -1.098240}};
    };

    class Land_fortified_nest_big_EP1: Military {
        lootPos = {{0.663086, 1.067380, -0.740341}, {0.513184, -1.362300, -0.740341}, {-0.991211, 1.116210, -0.740341}, {-2.871090, -3.942380, -0.740341}};
    };

    class Land_Mil_House_EP1: Military {
        vehPos = {{13.439000, 3.252440, -5.712440, 84}};
        lootPos = {{11.794900, 4.314700, -5.814390}};
        lootPosZombie = {{-2.134770, 6.691160, -4.569090}, {5.588870, 6.412840, -4.440980}};
        lootPosSmall = {{-1.547850, 5.469970, -5.004060}, {-2.618160, 5.463620, -5.009700}};
    };

    class Land_Misc_Cargo1Bo_EP1: Industrial {
        lootPos = {{-0.017090, -0.331421, -1.092250}};
    };

    class Land_Mil_Barracks_EP1: Military {
        lootPos = {};
    };

    class Land_Mil_Barracks_L_EP1: Military {
        lootPos = {};
        lootPosZombie = {{-3.979980, -7.651370, -1.336520}, {-2.419190, -7.814450, -1.335690}};
    };

    class Land_vez: Military {
        maxRoaming = 1;
        lootPos = {{-0.058594, 1.513670, 1.363310}};
        lootPosZombie = {{-0.116699, -0.801758, -2.818570}};
    };

    class Land_Shed_W03_EP1: Residential {
        maxRoaming = 3;
        lootPos = {};
    };

    class Land_Ind_Oil_Pump_EP1: Industrial {
        lootPos = {{1.490480, -1.996090, -2.084730}};
    };

    class Land_IndPipe2_bigL_L_EP1: Industrial {
        lootPos = {{1.099610, 1.115720, 2.032300}};
    };

    class Land_Barrack2: Hospital {
        maxRoaming = 1;
        lootChance = 0.400000;
        lootPos = {{-1.964840, 4.155760, -0.689606}, {1.153810, 0.312500, -0.691864}};
    };

    class Land_House_C_1_EP1: Residential {
        lootPos = {{-3.624760, -1.833010, -0.967744}, {3.192630, -2.926760, -0.937744}, {7.948240, -1.153810, -0.957744}};
        lootPosZombie = {{-5.451660, -0.360596, -0.052744}, {5.609380, -1.803470, -0.052744}};
        lootPosSmall = {{-7.649170, -2.333250, -0.257745}, {-2.651610, -2.344730, -0.717744}, {2.076660, -3.625490, -0.017744}, {7.569820, -2.368900, -0.257744}, {2.635500, -1.623780, -0.947745}};
    };

    class Land_House_C_2_EP1: Residential {
        lootPos = {{-3.634770, 2.833980, -2.278910}, {5.941160, 1.086910, -2.302690}, {0.387207, 1.193600, -1.477820}, {5.494380, -1.473880, 1.568680}, {-2.244870, -1.440190, 0.547503}, {-2.013430, 3.415530, 0.547503}, {5.069090, 1.219970, 0.746294}, {5.754640, -4.690430, 0.794252}};
        lootPosZombie = {{-0.131592, 3.387940, 1.639510}, {-4.255370, 1.240230, 1.422500}, {2.326900, 1.891360, -1.437350}, {-1.871830, -0.485840, -1.412100}, {1.218020, -1.587650, 1.671370}};
        lootPosSmall = {{0.160400, 1.068120, -2.004560}, {-0.469482, 1.109620, -2.200600}, {1.116700, 0.707031, -1.782690}, {-1.621580, -1.724370, 1.117500}, {-1.639650, -1.273680, 1.457500}, {5.883790, -3.067870, 1.174250}, {-2.317380, 3.167240, 1.377500}, {-1.856200, 3.803220, 1.377500}, {-0.393799, 3.505860, -1.611310}, {6.069340, 0.044434, -2.072690}, {-1.952150, -1.919430, -2.339130}, {2.173340, -1.750240, 0.746630}};
    };

    class Land_House_C_3_EP1: Residential {
        lootPos = {{6.619870, -1.866700, -3.914830}, {5.804930, 1.210940, -3.914830}, {-7.115230, 2.784180, -3.868680}, {-6.458740, -0.478271, -3.868680}, {-6.375980, -2.273440, -3.868680}, {-4.845210, -2.556640, 0.576136}, {-1.216060, -1.246340, 1.961080}};
    };

    class Land_House_C_4_EP1: Residential {
        lootPos = {{5.384520, -0.364746, -3.483550}, {3.160890, 2.816160, -3.483550}, {-3.364990, 2.446290, -3.483550}, {-4.604740, 0.048340, -3.483550}, {4.349850, -0.835205, -0.351460}, {1.846680, -3.716800, -0.352423}, {-1.230960, -5.153080, -0.278610}, {-4.166020, 2.480220, -0.348963}};
    };

    class Land_House_C_5_EP1: Residential {
        lootPos = {{3.149900, 2.395020, -1.366920}, {-1.801270, -2.980220, -1.366920}};
    };

    class Land_House_C_5_V2_EP1: Residential {
        lootPos = {{3.425290, 1.778320, -1.366920}, {-3.668700, 1.987790, -1.366920}, {-2.027100, -2.912600, -1.366920}, {-1.271000, -3.943850, 1.333290}};
    };

    class land_panelak3: Residential {
        lootPos = {{2.004150, -1.333250, 12.376900}, {0.037842, -1.236080, -10.825400}};
        lootPosZombie = {{-0.654541, 1.482910, -9.940380}, {0.709717, 1.214110, -9.940380}};
    };

    class Land_House_C_5_V3_EP1: Residential {
        lootPos = {{2.437990, 1.036620, 2.260500}, {-1.003910, -3.924800, 1.227320}, {0.833740, 4.916990, -0.671498}, {-1.630370, 3.666990, -1.481500}, {-1.244630, -3.437010, -1.481500}};
        lootPosZombie = {{-3.547360, 1.735350, -0.596497}, {2.470210, 4.548340, -0.596450}, {1.736820, 2.963380, 2.295500}, {-3.402340, -4.056640, 2.182320}};
        lootPosSmall = {{3.442870, 1.235350, 1.420500}, {3.649170, 3.851560, 1.460500}, {-0.623779, -5.094240, 1.247320}, {2.312010, 0.770996, -0.041498}, {2.531980, 0.829590, -0.731498}, {1.817380, 5.239260, -1.481500}, {-4.403320, 0.501465, -1.041500}, {-0.465820, -2.835940, -1.081500}, {-0.466797, -3.589840, -0.401499}};
    };

    class Land_House_C_5_V1_EP1: Residential {
        lootPos = {{1.010250, 4.851810, -1.481500}, {3.427730, 1.424800, -1.491500}, {-1.629390, -4.693360, -1.481500}, {-1.569820, 3.663330, -1.491500}, {2.284180, 1.030760, 2.260500}, {-0.941895, -3.759520, 1.163510}};
        lootPosZombie = {{-3.112060, 1.509520, -0.596497}, {2.394530, 4.839600, -0.592795}, {1.486330, 3.104250, 2.295500}};
        lootPosSmall = {{0.615479, 4.928470, -0.671498}, {2.230710, 0.780518, -0.411497}, {2.610110, 0.823975, -1.091500}, {-4.352050, -0.096680, -1.051500}, {-0.527100, -2.936770, -1.421500}, {-4.285400, 3.090820, -1.471500}, {-4.428220, -5.132320, -1.481500}, {-0.468018, -3.184810, -0.041496}, {2.965820, 1.171140, 2.260500}, {1.852050, 4.837160, 1.760500}};
    };

    class Land_House_K_6_EP1: Residential {
        lootPos = {{2.361080, 1.413090, -1.607970}, {-2.571780, 1.422850, -1.594250}, {-4.814450, 2.981930, 1.486390}, {-0.123047, 3.832030, 1.471440}, {2.706300, 0.193359, 4.421450}, {-4.358400, -2.996090, 4.331530}, {-0.088867, 3.029300, 4.421430}, {2.108640, 0.180664, 1.470760}, {-4.100830, -2.090820, 1.555510}};
    };

    class Land_House_C_9_EP1: Residential {
        lootPos = {{-3.473390, 2.130860, -3.747260}, {-3.177730, 4.198490, -3.748370}, {-0.839844, 5.704100, -3.749440}, {4.675290, 1.198970, -3.748320}, {4.205080, -1.852290, -3.748050}, {1.010740, -0.609619, -0.152166}, {0.213379, 1.566160, -0.152166}, {1.661380, 4.334720, -0.152166}, {4.382080, -5.141360, -0.152166}};
    };

    class Land_House_C_10_EP1: Residential {
        lootPos = {{-0.476807, -6.184080, -4.208100}, {-2.191890, -2.326660, -4.199430}, {0.970459, 5.159420, -4.198940}, {2.098140, 8.111330, -4.198520}, {0.209961, 8.655030, -4.197720}, {-1.555420, -2.835940, -0.019726}, {0.849854, -5.492190, -0.869633}, {-1.562260, 8.495610, -0.878298}, {-4.927000, 0.839600, -0.574228}, {-2.160400, 8.406740, 2.471960}, {2.022710, 5.813720, 5.227630}, {-2.178220, 1.530760, -0.878794}};
        lootPosZombie = {{0.153076, -2.367430, -3.311920}, {-0.961670, -7.515870, -3.320740}, {2.464600, 5.951420, -3.295700}, {-3.105960, 6.557620, -3.294180}, {2.660890, 5.735840, 0.006340}, {-1.507080, 7.183590, 0.006693}, {-0.899902, -4.460450, 0.005299}};
        lootPosSmall = {{-3.521240, -9.309330, -4.201030}, {0.401611, -0.616211, -4.198470}, {-1.308350, 9.257570, -4.116130}, {-0.946045, 9.297610, -3.106130}, {0.183594, 9.234380, -2.745830}, {1.155520, 4.887700, -3.250710}, {0.820313, 4.840090, -3.589730}, {-0.012939, 9.262940, -3.786080}, {0.918701, -1.184330, -0.879436}, {-2.122310, -2.697750, -0.399366}, {-3.640140, 4.155030, -0.268515}, {-3.171140, 0.639160, -0.878897}, {2.640140, 4.590090, 2.471960}, {0.853516, 5.556640, 5.227570}, {2.844480, 5.579100, 2.471960}, {3.439450, -9.373540, -0.879139}, {1.836670, 7.458250, -0.878618}, {3.328610, -2.795650, -4.200150}};
    };

    class Land_House_C_11_EP1: Residential {
        lootPos = {{-4.875000, -3.755860, -2.457030}, {-1.228520, -3.175290, -2.084530}, {6.558590, 0.731934, -2.084530}, {4.740720, 3.214360, -2.084530}, {4.395510, 0.458984, -2.084530}, {0.449219, -3.038570, 0.972969}, {4.829100, 3.446290, 0.972969}};
    };

    class Land_House_C_12_EP1: Industrial {
        lootPos = {{-3.271970, -1.581300, -3.501010}, {-2.098630, -6.130860, -3.521020}, {-2.979000, -8.693600, 0.141808}, {-2.666020, -3.043700, 0.139957}, {5.910160, -3.592040, 0.132626}, {2.331540, -1.002440, -3.519370}};
        lootPosZombie = {{2.111820, -8.167240, 1.007630}, {1.854980, -3.488280, -2.636010}, {-2.748540, 0.133301, -2.636010}, {2.656740, -5.691650, -2.636010}, {-2.607420, -7.359130, 1.017400}};
        lootPosSmall = {{-4.038570, -2.062260, -2.431020}, {-4.023440, -1.440190, -3.111020}, {-3.553710, -0.618164, -3.291020}, {7.381840, 0.690674, -3.121010}, {-2.992680, -6.548830, 3.455730}, {7.581050, -2.408940, 0.112629}, {-1.790040, -3.583250, 0.128376}, {-2.057130, -9.008060, 0.150394}};
    };

    class Land_House_K_3_EP1: Residential {
        lootPos = {{0.524414, 3.516600, -0.537670}, {1.534910, -0.064453, -0.790318}, {-0.887451, 0.615234, -0.790318}, {-4.461910, 1.383790, -0.795597}, {1.100100, 5.407230, 2.817190}};
    };

    class Land_House_K_7_EP1: Residential {
        lootPos = {{-0.995361, 1.890140, -0.218372}, {-4.954100, 3.852540, -0.218374}, {-3.450200, 4.037600, 3.327670}};
    };

    class Land_House_L_7_EP1: Residential {
        lootPos = {{3.529790, -0.343750, 0.102112}, {-0.245117, 3.107420, -0.261154}, {-5.434080, 3.364260, -0.646149}, {-4.901370, 1.191890, -0.651993}, {0.214844, -3.709470, -1.007350}};
    };

    class Land_House_L_6_EP1: Residential {
        lootPos = {{5.514160, -0.646240, -1.509000}, {1.162600, 1.936770, -1.539900}, {4.209960, 1.621580, 1.281010}, {3.153810, -2.124270, 1.280990}, {-3.742680, -2.231930, -1.537380}};
    };

    class Land_House_K_8_EP1: Residential {
        lootPos = {{2.942630, 2.719480, 3.349960}, {-0.054199, 3.512940, 3.349960}, {-2.812740, 1.993650, 0.231133}, {-2.592530, 3.665280, -1.815570}, {-2.554930, -2.541260, -2.636750}, {2.978030, -1.893550, -2.640590}};
        lootPosZombie = {{-2.600830, -1.246830, -1.667640}, {3.300050, -1.265630, 1.123510}, {-0.615479, 2.000490, 1.127400}, {-1.737550, 2.195800, -1.708000}};
        lootPosSmall = {{-0.681641, 0.580322, 3.549960}, {1.301030, 3.723390, 3.819960}, {1.459470, 2.583740, 3.349960}, {-3.103760, -1.510250, 3.349960}, {-4.215330, 1.649900, 0.096493}, {3.221920, 3.680180, 0.234936}, {-3.194090, -1.905520, 0.496338}, {3.314450, -0.210938, -1.821040}, {3.002930, -0.161865, -2.163980}, {0.443359, -3.274170, -2.676950}, {-3.137700, 1.339360, -2.218200}};
    };

    class Land_House_K_5_EP1: Residential {
        lootPos = {{-2.403810, 1.906740, 1.518890}, {-5.967770, 0.826416, 0.710116}, {-3.058110, 4.056760, 1.521650}, {1.291990, 1.859130, 1.548250}, {4.403810, 3.966190, 2.263650}, {4.177250, 0.271484, 2.400900}, {1.309080, 1.501950, 1.552250}};
    };

    class Land_House_K_1_EP1: Residential {
        lootPos = {{-0.685547, 4.021610, 1.566260}, {3.713870, 5.481140, 1.566260}, {3.234380, 2.353880, 1.566260}, {-3.305660, 4.655580, 1.549290}, {-3.775390, 2.020870, 1.608630}};
    };

    class Land_House_L_1_EP1: Residential {
        lootPos = {{1.631350, -1.225100, -0.619034}, {-0.165039, -1.744630, -0.611481}, {-1.183110, -0.159180, -0.596542}};
    };

    class Land_House_L_3_EP1: Residential {
        lootPos = {{-5.598630, -0.384766, -0.173644}, {-5.234250, 2.496090, -0.226910}, {0.757690, 2.955080, -0.222477}, {-0.387817, 0.023438, -0.222477}, {2.113650, 2.995120, -0.222477}};
    };

    class Land_House_L_4_EP1: Residential {
        lootPos = {{-3.349610, -0.487122, -1.330580}, {-6.605470, 0.131348, -1.298520}, {-0.385742, -0.055176, -1.340660}, {-0.209961, 3.149410, -1.253000}, {3.475590, 0.370972, -1.057660}, {5.419920, 3.256710, -1.014350}};
    };

    class Land_House_L_9_EP1: Residential {
        lootPos = {{4.404300, 0.311035, -0.621445}, {-2.235840, 1.686040, -0.542923}, {4.091800, 0.924805, 2.604190}};
    };

    class LAND_ibr_bank: Office {
        lootPos = {{1.447020, -0.955100, -1.601580}, {-7.406490, -4.948200, -1.601580}, {-7.508790, 3.161600, -1.601580}, {-13.193100, 3.024400, -1.601580}, {-10.631600, -1.492200, -1.601580}, {-10.348100, -5.663100, -1.601580}, {-14.024700, -6.465300, -1.601580}, {-10.189700, -2.659200, -1.601580}};
    };

    class Land_House_L_8_EP1: Residential {
        lootPos = {{0.662598, 5.043950, -1.012050}, {0.732910, 2.594240, -1.015740}, {4.738280, 3.568360, -0.773781}, {3.767580, 3.675780, 1.736220}, {-2.515140, -2.199710, -1.550130}, {-2.515140, -2.199710, -1.550130}};
    };

    class Land_ibrhotel: Residential {
        lootPos = {{-8.449220, 9.081050, -7.746720}, {-0.813965, 9.174800, -7.746720}, {3.173830, 11.873000, -7.746720}, {2.740720, 2.910160, -7.746720}, {3.802250, -2.444340, -7.859440}, {-1.287110, -0.235352, -4.259430}, {17.837900, -8.188960, -4.259430}, {15.487800, -11.401400, -4.259430}, {11.840300, -17.539101, -4.259430}, {4.749020, -11.901900, -4.259430}, {-9.043950, -17.606400, -4.259430}, {-11.976100, -15.253900, -4.259430}, {-15.906300, -12.082000, -4.259430}, {-12.283700, -4.319340, -4.259430}, {-16.749500, 9, -4.259430}, {-15.776400, 11.687500, -4.259440}, {-11.955100, 16.458000, -4.259440}, {-4.832030, 12.129400, -4.259430}, {-5.214360, 6.142580, -4.259430}, {3.573730, 5.387210, -4.259430}, {8.665530, 17.241699, -4.259430}, {12.272500, 16.188499, -4.259430}, {11.835900, 4.063480, -4.259430}, {8.990230, 1.729490, -4.259430}, {-1.287110, -0.235352, -0.759062}, {17.837900, -8.188960, -0.759062}, {15.487800, -11.401400, -0.759062}, {11.840300, -17.539101, -0.759062}, {4.749020, -11.901900, -0.759062}, {-9.043950, -17.606400, -0.759062}, {-11.976100, -15.253900, -0.759062}, {-15.906300, -12.082000, -0.759062}, {-12.283700, -4.319340, -0.759062}, {-16.749500, 9, -0.759062}, {-15.776400, 11.687500, -4.259440}, {-11.955100, 16.458000, -4.259440}, {-4.832030, 12.129400, -0.759062}, {-5.214360, 6.142580, -0.759062}, {3.573730, 5.387210, -0.759062}, {8.665530, 17.241699, -0.759062}, {12.272500, 16.188499, -0.759062}, {11.835900, 4.063480, -0.759062}, {8.990230, 1.729490, -0.759062}, {-1.287110, -0.235352, 2.740820}, {17.837900, -8.188960, 2.740820}, {15.487800, -11.401400, 2.740820}, {11.840300, -17.539101, 2.740820}, {4.749020, -11.901900, 2.740820}, {-9.043950, -17.606400, 2.740820}, {-11.976100, -15.253900, 2.740820}, {-15.906300, -12.082000, 2.740820}, {-12.283700, -4.319340, 2.740820}, {-16.749500, 9, 2.740820}, {-15.776400, 11.687500, -4.259440}, {-11.955100, 16.458000, -4.259440}, {-4.832030, 12.129400, 2.740820}, {-5.214360, 6.142580, 2.740820}, {3.573730, 5.387210, 2.740820}, {8.665530, 17.241699, 2.740820}, {12.272500, 16.188499, 2.740820}, {11.835900, 4.063480, 2.740820}, {-1.544920, 0.158691, 6.244850}, {3.119140, 5.814450, 6.244850}};
    };

    class Land_MBG_Shanty_BIG: Residential {
        lootPos = {{-29.875200, -15.805700, 2.999970}, {23.409700, 11.502400, 24.967199}, {-29.344999, -16.756800, 3.040130}, {23.231899, 11.620100, 27.967199}, {-33.377899, -11.356400, 5.811980}};
    };

    class land_mbg_apartments_big_04: Office {
        lootPos = {{10.195300, -2.476560, -3.198980}, {3.144530, -0.197266, -3.198980}, {0.949219, 5.587890, 5.945020}, {-0.888672, 2.474610, 2.693820}, {3.994140, -0.273438, 2.897020}, {10.734400, -0.351563, 2.897020}, {-10.496100, -5.464840, 2.897020}, {-3.253910, 0.669922, 2.897020}, {10.681600, -2.263670, -0.150980}, {-3.488280, 0.315430, -0.150980}, {-2.974610, -2.355470, -0.150980}};
        lootPosZombie = {{-0.089844, 4.677730, -7.088730}, {0.890625, -5.139650, -6.902380}};
        lootPosSmall = {{4.527340, 1.462890, -3.198980}, {2.902340, 5.909180, 2.897020}, {5.468750, -0.703125, 2.897020}, {-4.468750, -0.686523, 2.897020}, {5.173830, -1.805660, -0.150980}, {-7.445310, 5.683590, -0.150980}};
    };

    class land_mbg_killhouse_4: Residential {
        lootPos = {{7.222660, -4.102050, -3.843180}, {-2.048830, 0.195313, -3.843180}, {-6.333980, 2.086910, -3.843180}, {3.658200, 0.326660, -3.843180}, {7.248050, 6.554690, -3.843180}, {6.740230, 2.409670, -0.543176}, {-1.832030, 2.083010, -0.543176}, {6.857420, 0.013184, -0.543176}, {-1.892580, -0.352051, -0.543176}};
        lootPosZombie = {{0.597656, -6.933110, -3.626620}, {-8.156250, 1.887700, -3.626620}};
        lootPosSmall = {{2.419920, -4.590820, -3.843180}, {-1.611330, -4.524900, -3.843180}, {2.617190, 3.530760, -3.843180}, {7.638670, 6.791020, -0.543176}, {2.548830, 6.956050, -0.543176}, {-1.708980, 6.921880, -0.543176}, {2.703130, -1.136720, -0.543176}, {-6.580080, -4.492680, -0.543176}};
    };

    class land_mbg_ger_estate_2: Office {
        lootPos = {{-0.847656, -5.232910, -2.131870}, {-0.615234, 3.959960, -1.551870}, {8.308590, 0.642578, -2.021870}, {7.605470, 6.679200, -2.131870}, {6.388670, -5.313960, -2.131870}, {-4.740230, 3.715820, -2.131870}};
        lootPosZombie = {{2.126950, -8.607910, -1.520800}, {1.339840, 9.189450, -1.250710}};
        lootPosSmall = {{-6.312500, -6.481450, -1.431870}, {-4.814450, -2.029300, -1.431870}, {-3.478520, 4.587890, -2.131870}, {0.107422, 3.459470, -1.551870}, {4.234380, -1.421880, -1.831870}, {4.974610, 1.092290, -1.301870}, {6.537110, -2.072270, -1.291870}, {6.355470, -4.701170, -1.651870}, {-7.552730, 3.992680, -1.651870}};
    };

    class land_mbg_ger_rhus_1: Residential {
        lootChance = 0.300000;
        lootPos = {{-1.851560, 3.599610, -0.035691}, {3.046880, 1.852540, -0.465693}, {3.363280, 0.257813, -0.465693}, {-2.740230, -3.264650, -0.465693}, {1.238280, -4.195310, -2.385690}, {1.560550, 2.370120, -2.865690}, {-10.494100, 3.891600, -0.454963}, {-9.917970, -4.144530, -0.454963}, {-5.843750, 0.373047, -0.174962}, {-4.509770, 0.085938, -3.354960}};
        lootPosZombie = {{-2.031250, 6.388670, -2.936060}, {-8.333980, -5.828130, -2.732090}};
        lootPosSmall = {{-1.470700, 4.398440, -0.035691}, {1.560550, 0.314453, -0.185692}, {2.535160, 0.682617, -3.255690}, {3.626950, 0.696289, -2.505690}, {-3.343750, 3.228520, -2.435690}, {-3.320310, 2.380860, -1.955690}, {-4.810550, 1.394530, -0.454963}, {-6.648440, -4.291020, -0.454963}, {-4.326170, -1.610350, -2.514960}, {-6.306640, -4.113280, -2.374960}};
    };

    class land_mbg_garage_single_b: Industrial {
        lootPos = {{2.544920, 3.976070, -1.038990}, {4.136720, -0.062500, -1.038990}};
        lootPosZombie = {{2.960940, 6.337400, -0.133815}};
        lootPosSmall = {{4.505860, 2.569820, -1.038990}};
    };

    class Land_dum_istan3_hromada2: Residential {
        lootPos = {{1.676270, 3, -4.626030}, {-1.473630, 4.922850, -1.285170}, {6.438480, 1.935550, 2.088010}};
        lootPosZombie = {{-1.771480, 2.599610, -0.410172}, {4.463870, 1.852540, -3.751030}};
        lootPosSmall = {{7.023440, 5.711910, 2.088010}, {0.856445, -1.722660, -1.285170}, {-2.517580, 1.200200, -1.285170}, {5.189450, 2.938480, -4.626040}};
    };

    class Land_budova4_in: Military {
        lootPos = {{-6.504150, 2.141600, -1.887230}, {-1.661620, 2.101680, -1.887230}, {2.943120, 2.297000, -1.887230}, {5.340820, -1.829220, -1.887230}};
    };

    class land_army_hut_int: Military {
        lootPos = {{2.795900, -5.073730, -1.330560}, {2.797850, -2.162600, -1.330560}, {-0.943359, -0.060791, -1.359810}, {0.689453, 1.871340, -1.361670}};
    };

    class Land_army_hut3_long_int: Military {
        lootPos = {{-2.887210, -4.360350, -1.236170}, {0.753906, -3.900390, -1.236170}, {-2.537110, -1.951170, -1.236170}, {-2.278560, -0.211914, -1.236170}, {-0.066406, -1.708010, -1.236170}, {0.141113, 2.311040, -1.236170}};
    };

    class land_army_hut2_int: Military {
        lootPos = {{-0.421387, -0.051758, -0.948329}, {1.801030, 0.945313, -0.948329}, {2.245850, -2.687500, -0.948329}, {-1.245610, -1.539550, -0.948329}};
    };

    class land_ibr_hangar: MilitaryIndustrial {
        lootPos = {{-5.756350, 9.953860, -3.573180}, {-8.061520, -11.406500, -3.581920}, {8.685550, -5.303710, -3.579420}};
    };

    class land_ind_pec_03: IndustrialMilitary {
        lootPos = {{6.072750, 11.862300, 2.599730}, {7.822750, -2.048830, -1.937600}, {13.189900, 16.069300, -5.151280}, {14.039600, 8.125490, -5.151280}, {13.823700, 12.536600, -4.691280}, {4.630860, 16.655300, -2.042010}, {3.072750, -5.119630, -5.151280}, {4.795410, -2.070310, -1.938700}, {3.676270, 14.551800, 2.601310}, {-2.084470, -13.685500, 1.114550}, {3.214840, 8.372070, -5.151280}, {4.786620, 18.049801, -5.151280}, {-3.981930, -24.533199, -5.151280}, {12.902800, -1.584470, 3.054040}, {-0.259766, 22.271500, 4.056070}, {1.960940, 25.420900, 4.056070}};
        lootPosZombie = {{1.979000, 15.701200, 3.486460}, {5.936040, 16.268600, 3.485820}, {6.505860, 13.819800, -4.226280}, {12.314000, 9.642580, -4.226280}, {6.153810, 9.787110, -4.226280}, {6.344240, -2.520510, -0.953124}, {-5.040040, -4.305660, -4.226280}, {-5.775880, -21.029301, -4.226280}};
        lootPosSmall = {{2.170900, 11.579600, 2.750190}, {1.177250, 11.891100, 3.870510}, {6.624510, 13.225100, 4.249520}, {3.217770, -11.702600, -1.856710}, {8.359380, -3.106930, -1.935590}, {14.185100, -5.313480, -1.087540}, {13.087400, 16.733900, -4.271280}, {7.372070, 16.623501, -4.991280}, {11.613300, 16.707500, -5.041280}, {12.248000, 13.299800, -3.561280}, {-15.287600, -18.275400, -5.061280}, {3.383300, 14.481400, 3.361350}, {10.679700, 7.669430, -4.431280}, {-4.569820, 14.965800, -4.941280}, {4.232420, -26.778299, -1.972250}, {2.274900, 21.808599, 4.056070}};
    };

    class land_ind_pec_03a: IndustrialMilitary {
        lootPos = {{6.072750, 11.862300, 2.599730}, {7.822750, -2.048830, -1.937600}, {13.189900, 16.069300, -5.151280}, {14.039600, 8.125490, -5.151280}, {13.823700, 12.536600, -4.691280}, {4.630860, 16.655300, -2.042010}, {3.072750, -5.119630, -5.151280}, {4.795410, -2.070310, -1.938700}, {3.676270, 14.551800, 2.601310}, {-2.084470, -13.685500, 1.114550}, {3.214840, 8.372070, -5.151280}, {4.786620, 18.049801, -5.151280}, {-3.981930, -24.533199, -5.151280}, {12.902800, -1.584470, 3.054040}, {-0.259766, 22.271500, 4.056070}, {1.960940, 25.420900, 4.056070}};
        lootPosZombie = {{1.979000, 15.701200, 3.486460}, {5.936040, 16.268600, 3.485820}, {6.505860, 13.819800, -4.226280}, {12.314000, 9.642580, -4.226280}, {6.153810, 9.787110, -4.226280}, {6.344240, -2.520510, -0.953124}, {-5.040040, -4.305660, -4.226280}, {-5.775880, -21.029301, -4.226280}};
        lootPosSmall = {{2.170900, 11.579600, 2.750190}, {1.177250, 11.891100, 3.870510}, {6.624510, 13.225100, 4.249520}, {3.217770, -11.702600, -1.856710}, {8.359380, -3.106930, -1.935590}, {14.185100, -5.313480, -1.087540}, {13.087400, 16.733900, -4.271280}, {7.372070, 16.623501, -4.991280}, {11.613300, 16.707500, -5.041280}, {12.248000, 13.299800, -3.561280}, {-15.287600, -18.275400, -5.061280}, {3.383300, 14.481400, 3.361350}, {10.679700, 7.669430, -4.431280}, {-4.569820, 14.965800, -4.941280}, {4.232420, -26.778299, -1.972250}, {2.274900, 21.808599, 4.056070}};
    };

    class Land_MBG_Police_Station: Office {
        lootPos = {{9.815430, -4.363650, -1.598290}, {1.011720, -6.023440, -1.598290}, {-5.033690, -5.983760, -1.598290}, {-8.541500, -0.348511, -1.598290}, {-8.885740, -2.938230, -1.598290}, {-5.555180, 4.804930, -1.598290}, {-1.772460, 5.493650, -1.598290}, {2.321290, 6.330320, -1.598290}, {3.544920, 6.273320, 1.688340}, {9.889160, 4.681760, 1.688330}, {10.056600, -1.077270, 1.688330}, {6.649900, 1.782960, 1.688330}, {-5.300290, -2.687260, 1.688330}, {1.259770, -1.766360, 1.688330}, {-6.566890, 1.518430, 1.688340}, {-5.338870, 3.925290, 1.688340}, {-2.312500, 6.187740, 1.688340}};
    };

    class Land_dum_mesto_in: Residential {
        lootPos = {{-5.537960, -2.519960, -3.997690}, {-4.661130, 1.340520, -4.263310}, {-4.913700, 3.471800, -4.263310}, {0.397583, -2.748660, -4.264180}, {2.187620, 0.747070, -4.264180}, {4.941280, -1.671080, -4.264180}, {4.482790, 2.824950, -4.264180}, {1.110230, 4.699280, -2.755610}, {4.989380, 3.798830, -1.280950}, {5.559570, -1.612180, -1.280950}, {0.695679, -2.182680, -1.280950}, {-2.429690, -1.188540, -1.275820}, {-4.777220, 3.519960, -1.275820}};
    };

    class Land_tovarna1: Industrial {
        lootPos = {{2.838870, 5.238890, -5.754420}, {-2.307740, 7.319340, -5.754420}, {-11.090800, 5.448970, -5.754420}, {-11.474600, -1.579100, -5.754420}, {-5.524050, 1.689940, -5.754420}, {2.826050, 1.480100, -5.754420}, {2.441280, -6.502560, -5.754420}, {-6.683350, -0.453369, 2.179970}, {-3.818120, 0.690186, 2.179970}, {2.787350, 1.194090, 2.179970}, {1.591670, -6.066650, 2.179970}, {-2.464600, -5.636960, 2.179970}, {-5.773930, -7.282710, 2.179970}, {-0.484985, -3.141970, 4.829920}};
    };

    class Land_Ind_Garage01_EP1: Industrial {
        lootPos = {{1.650880, 2.490480, -1.231140}};
        lootPosZombie = {{0.125488, 0.557861, -0.357141}, {1.110840, -1.336430, -0.361160}};
        lootPosSmall = {{2.890140, 2.496340, -1.120630}, {2.848140, 3.436770, -1.121020}, {1.390630, 3.597660, -0.391855}, {1.572270, 3.613530, 0.368147}, {1.725100, 3.613530, -1.151850}};
    };

    class land_hut01: Residential {
        lootPos = {{0.304749, -0.543213, -0.448339}, {0.885254, 2.907470, -0.448340}};
    };

    class land_housev2_05: Residential {
        lootPosZombie = {{-3.788090, -0.407715, -2.068790}, {5.364990, 7.903810, -2.088790}};
    };

    class land_hut02: Residential {
        lootPos = {{-0.498901, 2.974000, -0.445764}, {-1.072450, -0.756958, -0.445764}};
    };

    class land_hut04: Residential {
        lootPos = {{-1.072270, -0.354492, -0.437198}, {0.939697, 2.782710, -0.437198}};
    };

    class Land_Ind_Oil_Tower_EP1: Industrial {
        lootPos = {{3.557430, -5.927730, -12.975500}, {4.630860, 1.249020, -12.993200}, {-0.240356, -1.082520, -12.987500}, {6.876890, -6.349610, -8.008890}, {2.311770, 0.231689, -8.004780}};
    };

    class Land_ibr_terminal: Office {
        lootPos = {{11.188500, -13.066900, -4.049740}, {4.423830, -9.647460, -4.049740}, {-2.428220, -6.947750, -4.049740}, {-3.005370, -1.254390, -4.049740}, {0.473145, 8.723140, -4.049740}, {14.860800, 12.524900, -4.049740}, {3.338380, -14.522900, 0.581566}, {-3.884280, -17.537600, 0.581566}, {-17.368200, 0.572266, -4.050010}, {-13.793900, 0.576172, -0.231342}, {-2.835450, 10.900900, -0.949741}, {-2.276860, -16.423800, 3.681570}};
    };

    class Land_A_Villa_EP1: Office {
        lootPos = {{-23.344200, 1.714840, -3.659290}, {14.549800, -5.697750, -5.067220}, {5.845700, -2.098140, -5.067170}, {9.524900, 3.765630, -5.067170}, {10.045400, 11.509300, -5.073400}, {0.268555, 8.646480, -5.066990}, {-0.378906, 15.398900, -5.067240}, {-6.685060, 14.944800, -5.067220}, {-10.964400, 13.099600, -5.067190}, {11.057100, 4.489260, -1.484010}, {2.859380, 9.129390, -1.484070}, {-3.876460, 8.014160, -1.484400}, {0.053711, 10.398400, -1.484400}, {-2.784670, 13.590300, -1.484400}, {-0.118652, 15.339400, -1.484400}, {-6.737790, 15.772000, -1.484400}, {-8.394530, 13.524900, -1.484400}, {-10.531700, 9.751460, -1.484400}, {-11.806200, 14.235800, -1.484400}, {-15.577100, 14.039600, -1.484400}};
    };

    class Land_A_Office01_EP1: Land_A_Office01 {
        lootPos = {{-2.503910, -2.469480, -4.728000}, {4.235350, -0.336914, -4.728000}, {4.111330, 6.112300, -4.728000}, {0.242188, 6.062990, -4.728000}, {4.316410, 3.740230, -4.728000}, {5.088870, 0.219727, -4.728000}, {11.650400, -1.564700, -4.728000}, {14.581100, -4.112300, -4.728000}, {13.854500, -0.749023, -4.728000}, {-7.762700, 5.590820, -4.728000}, {1.811520, 0.993408, -2.228000}, {4.931640, 4.319820, -2.228000}, {1.189450, 6.070310, -2.228000}, {2.231450, 3.765630, -2.228000}, {-4.763670, -2.512210, -2.228000}, {-14.559600, -3.407230, -2.228000}, {-15.270500, 5.927730, -2.228000}, {-10.906300, 6.041750, 0.672008}, {-6.307620, 3.300780, 0.672006}, {7.641600, 6.386960, 0.672001}, {13.672900, 6.595700, 0.671999}, {13.192400, -2.586910, 0.671998}, {3.091800, 2.437500, 6.204910}, {-1.457030, -2.283690, 6.204910}, {-2.129880, 4.515870, 0.672005}, {4.744140, -4.601560, -2.214860}, {8.345700, -1.107180, -2.228000}, {9.947270, -3.741460, -2.228000}, {7.138670, -2.507320, -2.228000}, {12.870100, 4.709230, -2.228000}, {15.372100, 3.423830, -2.228000}};
    };

    class Land_A_Stationhouse_ep1: Land_a_stationhouse {
    };

    class Land_ibrPanelak: Land_Panelak {
    };

    class Land_ibrPanelak2: Land_Panelak2 {
    };

    class Land_Ind_Expedice_1: Industrial {
        lootPos = {{5.561040, -18.413601, -5.757250}, {-10.073200, -18.789101, -3.486730}, {-6.210450, -7.654790, -3.486730}, {0.063477, -0.090820, -5.683890}, {-2.593510, 18.479500, -5.683890}, {-1.854740, 13.108900, -3.486730}};
        lootPosZombie = {{-7.985840, -18.782200, -2.611730}, {2.970210, 17.729000, -4.808900}};
        lootPosSmall = {{6.712890, -18.156300, -5.757250}, {-9.120360, -17.684601, -3.486730}, {-7.795900, -8.312010, -3.486730}, {-1.512210, 0.067383, -5.683890}, {-2.674800, 11.654300, -5.683900}, {-2.348140, 11.921900, -3.486730}};
    };

    class land_dum_istan2b: Residential {
        lootPos = {{-6.445310, -5.130370, 3.800190}, {-6.717770, 2.815920, 3.800190}, {3.338870, -0.539307, 0.822979}, {-0.506836, -2.222900, 0.822979}, {-3.934570, 2.114010, -2.299810}};
    };

    class Land_dum_olez_istan2: HouseRoaming {
    };

    class Land_dum_olez_istan2_maly2: HouseRoaming {
        lootPosZombie = {{-2.715820, -4.861330, -1.623560}, {-2.760740, 4.945310, -1.623560}};
    };

    class land_smd_dum02: HouseRoaming {
        lootPosZombie = {{4.373050, 1.687010, -2.726500}, {-4.509770, 1.544430, -3.412020}};
    };

    class land_dum_mesto: HouseRoaming {
        lootPosZombie = {{-5.113280, -6.347170, -3.939720}};
    };

    class land_deutshe: HouseRoaming {
        lootPosZombie = {{1.729490, 4.622070, -3.095700}, {1.693360, -4.750000, -3.788510}};
    };

    class land_stanice: HouseRoaming {
        lootPosZombie = {{-1.189450, 4.638670, -1.832410}};
    };

    class land_dum_mesto3_istan: HouseRoaming {
    };

    class land_dum_istan2_03a: HouseRoaming {
    };

    class land_nasypka: Residential {
        lootPos = {{-1.460450, -0.168945, 6.568240}};
        lootPosZombie = {{1.506590, -0.027832, -5.555270}};
        lootPosSmall = {{-1.586910, 0.717285, 6.568240}};
    };

    class Land_dum_istan3_pumpa: Residential {
        lootPos = {{-2.145020, 3.036620, -1.867870}, {4.096190, -0.563965, 1.474850}, {0.189453, 0.540039, 1.474850}, {-1.736820, 2.447750, 1.474850}};
    };

    class land_dum_istan3: Residential {
        lootPos = {{-8.491700, -0.922363, 0.585144}, {5.978520, 1.380370, 0.585148}, {3.551760, -5.428220, 0.585140}, {-2.331050, 3.748050, -2.672370}};
    };

    class land_house_y: Residential {
        lootPos = {{-0.570313, -5.213870, -1.406960}, {-5.156250, -5.322750, -1.406960}, {2.347660, 4.991700, -1.406960}};
    };

    class land_dum_istan4_inverse: Residential {
        lootPos = {{-2.772460, -1.729490, -4.335880}, {5.301760, 5.765630, -7.285880}, {-0.282227, 5.897460, -7.285880}, {-6.591800, 5.969730, -7.285880}};
    };

    class Land_duala_mini: Residential {
        lootPos = {{-1.372070, 2.254880, -2.748460}, {-3.434570, -2.049320, -2.748460}, {3.829590, 0.034668, -2.748460}, {3.791020, -2.259770, -2.748460}};
    };

    class Land_hut_old02: Industrial {
        lootPos = {{-5.604490, -1.202150, -3.032960}, {-3.803710, -2.331540, -3.032960}, {2.101560, -8.164060, -3.032960}, {3.874020, 8.281250, -3.032960}};
    };

    class land_dum_istan2_02: Industrial {
        lootPos = {{-0.566406, -3.447750, -4.149590}, {-2.001460, 1.436040, -4.149590}};
    };

    class LAND_garaz_bez_tanku: Industrial {
        lootPos = {{-2.980470, 0.046387, 3.416510}};
        lootPosZombie = {{-5.144040, -2.022950, -1.719240}, {4.926760, -2.673830, -1.719240}};
        lootPosSmall = {{-1.364990, -0.579102, 3.426510}};
    };

    class land_mbg_brickhouse_01: Residential {
        lootPos = {{-7.065430, 4.021970, -0.051506}, {5.555180, -0.523438, -0.051506}, {-0.717773, 4.018550, -0.051506}, {-2.002930, -2.351070, -3.356520}, {4.992190, -0.207520, -3.356520}, {-6.804690, 3.940430, -3.356520}};
    };

    class land_bouda_garaz: Industrial {
        lootPos = {{26.162800, -12.502000, -0.952108}, {23.308599, -6.623050, -0.952108}};
    };

    class Land_majak_podesta: Residential {
        lootPos = {{-1.224610, -2.179690, 2.283290}, {1.148440, -2.970700, 2.283290}};
    };

    class Land_Shed_M02: Industrial {
        lootPosZombie = {{-0.001953, 3.299320, -0.658600}};
        lootPosSmall = {{1.005860, 0.069824, -1.016660}, {-0.931641, 0.082520, -1.017550}};
    };

    class Land_sara_Domek_sedy: Residential {
        lootPos = {{-1.763670, -1.113280, -2.141960}, {-5.012700, 3.019530, -2.141960}, {5.412110, 2.625000, -2.141960}, {4.860350, -0.738281, -2.141960}};
    };

    class Land_dum_rasovna: Residential {
        lootPos = {{-1.271000, 3.382810, -2.699580}, {3.148930, 3.862550, -2.699580}, {3.309570, -4.178710, -2.699580}, {-0.936523, -1.974120, 0.242605}, {1.055180, 3.772710, 0.242605}};
        lootPosZombie = {{-1.082520, -1.930180, -1.794580}, {-1.685550, 2.199710, -1.794580}};
        lootPosSmall = {{-0.964844, -3.521480, 0.952604}, {0.613281, -0.726807, -2.699580}, {3.698730, -1.699950, -2.699580}};
    };

    class land_sara_domek_kovarna: Residential {
        lootPosZombie = {{0.099854, -0.891602, -0.880356}};
    };

    class land_sara_domek_hospoda: Residential {
        lootPos = {{-2.148440, -3.563960, -2.748780}};
        lootPosZombie = {{1.482910, -3.282230, -1.852910}};
        lootPosSmall = {{-1.160640, -4.724850, -2.759510}};
    };

    class Land_leseni2x: Industrial {
        lootPos = {{1.156250, -0.206055, 2.554660}};
    };

    class LAND_vokzal_big: Residential {
        lootPos = {{7.286130, -0.216797, -7.962830}, {6.849610, 2.561520, -7.962830}, {6.983400, -4.980470, -7.962830}, {-7.072270, 1.282230, -7.962830}};
    };

    class Land_dum_mesto2: Residential {
        lootPos = {{2.465820, 7.107420, -4.344750}, {2.873050, 4.039060, -4.344750}, {-3.567380, 4.050780, -4.344750}, {-2.499020, 0.468750, -4.344750}, {1.777340, -7.417970, -4.344750}, {-3.245120, -7.699220, -4.344750}, {-3.161130, -1.589840, -4.344750}, {3.195310, 1.642580, -0.945168}, {-3.191410, 7.765630, -0.944004}, {-0.253906, 4.785160, -0.944004}, {-3.356450, -5.744140, -0.944004}, {-1.705080, -7.226560, -0.944004}, {1.219730, -1.076170, -0.944004}};
    };

    class LAND_shopping_sab5: Supermarket {
        lootPos = {{-21.136700, -1.942380, -2.182790}, {-22.138700, 5.409180, -2.182850}, {-5.173830, -1.177730, -2.182800}, {2, -12.397500, -2.182710}, {-4.039060, -11.539100, -2.182720}, {-9.621090, -11.601600, -2.182720}, {-15.169900, -11.522500, -2.182720}, {-18.515600, -12.930700, -2.182710}, {-20.363300, -10.118200, -2.182730}, {-17.136700, -6.362300, -2.182760}, {-12.009800, -3.985350, -2.182770}, {-14.175800, 4.469730, -2.182840}, {-15.728500, -1.025390, -2.182800}, {3.406250, 4.306640, -2.182840}, {6.837890, -3.753910, -1.362220}, {-1.273440, 10.952100, -1.362220}, {-22.419901, 9.108400, -1.362220}, {1.224610, 8.136720, -2.182850}, {-3.181640, 8.714840, -2.182850}, {-7.773440, 7.515630, -2.182850}};
    };

    class LAND_Zachytka: Residential {
        lootPos = {{3.794920, -4.128910, -2.026970}, {-4.922850, -6.858400, -2.026970}, {-3.654300, -6.700200, -2.026970}, {-2.604490, -6.878910, -2.026970}, {-1.824220, 0.036133, -2.026970}, {-6.283200, -4.510740, -2.026970}, {-3.605470, 5.187500, -2.026970}, {4.421880, 11.215800, -2.026970}};
    };

    class LAND_hospoda: Residential {
        lootPos = {{3.460940, -1.428710, -1.803020}, {2.401370, -1.226560, -1.803070}, {7.818360, -1.632810, -1.802820}, {2.040040, -6.717770, -1.802890}, {-5.566410, 0.793945, -1.802950}, {-4.181640, 8.640630, -1.802860}, {1.166020, 5.079100, -1.803480}, {1.215820, 3.732420, -1.803400}, {0.248047, 5.551760, -1.803240}, {-1.847660, 3.929690, -1.803130}, {-1.852540, 0.222656, -1.803210}};
    };

    class LAND_Kiosk2: Residential {
        lootPos = {{-20.744101, 45.287800, 3.058760}, {-3.809330, -33.632801, 3.022460}, {-3.570070, -22.666000, 3.022460}, {4.765870, -24.371099, -0.618923}, {-1.104490, 43.193802, -0.582630}, {8.774410, 23.734600, -0.845428}, {-9.869140, 41.653301, 3.058760}, {7.846680, 20.990999, 4.767360}, {6.912110, 27.906700, 10.117800}};
    };

    class Land_deutshe_mini: Residential {
        lootPos = {{-4.342770, -2.542970, -2.748460}, {-0.624023, -0.357422, -2.748460}, {0.853516, 1.043950, -2.748460}, {-2.757810, 2.443360, -2.748460}};
    };

    class LAND_shopping_sab1: Supermarket {
        lootPos = {{-30.044201, 28.789101, -6.256630}, {-18.561001, 23.757799, -6.256630}, {1.320310, 24.587900, -6.256630}, {-7.867920, 15.118200, -6.256630}, {-22.362801, 16.882799, -6.256630}, {-26.789600, -24.942400, -6.256630}, {-22.454599, -17.333000, -6.256630}, {-30.662800, -11.019500, -6.256630}, {-2.519780, -23.171900, -6.256630}, {0.889893, -14.191400, -6.256630}, {23.301500, -15.135700, -6.256630}, {42.353001, -13.532200, -6.256630}, {37.339600, -22.901400, -6.342780}, {14.538800, -26.215799, -6.256630}, {9.930910, -18.287100, -6.256630}, {7.233150, 24.983400, -6.256630}, {8.887700, 16.459999, -6.256630}, {16.969700, 11.954100, -6.256630}, {27.367901, 21.385700, -6.256630}, {-28.763201, 27.722700, -2.386640}, {33.534199, 16.804701, -6.256630}, {-31.031700, 12.626000, -2.386640}, {-22.197500, 16.306601, -2.386640}, {-17.733900, 21.016600, -2.386640}, {-8.785640, 27.581100, -2.386640}, {-7.718260, 15.201200, -2.386640}, {1.657710, 16.349600, -2.386640}, {-36.409901, 8.603520, -2.386640}, {-43.608398, 8.642580, -2.386640}, {-41.821800, -2.674800, -2.386640}, {-35.785400, -5.953130, -2.386640}, {-16.272699, -13.229500, -2.386640}, {-23.003201, -13.276400, -2.386640}, {-25.671400, -25.604500, -2.386640}, {-10.161100, -26.000999, -2.386640}, {2.981450, -26.711901, -2.386640}, {2.591310, -13.535200, -2.386640}, {10.791300, -16.261700, -2.386640}, {17.158199, -27.323200, -2.386640}, {26.388700, -25.098600, -2.386640}, {30.888901, -22.107401, -2.386640}, {42.481701, -21.660200, -2.472790}, {41.872601, -13.737300, -2.386640}, {32.718300, -12.596700, -2.386640}, {34.224098, -5.041990, -2.386640}, {40.202400, -7.149410, -2.386640}, {39.807899, -0.091797, -2.386640}, {43.505901, 6.597660, -2.386640}, {33.391399, 3.021480, -2.386640}, {29.032200, 11.102500, -2.386640}, {33.186798, 17.453100, -2.386640}, {22.322800, 26.385700, -2.386640}, {7.328610, 23.856400, -2.386640}};
    };

    class LAND_skola: Residential {
        lootPos = {{15.850800, 20.459000, -2.003610}, {29.013201, 22.388700, -2.003610}, {30.633499, 16.110399, -2.003610}, {30.741199, 5.336910, -2.003610}, {18.755400, 5.073240, -2.003610}, {2.849120, 14.274400, -2.003610}, {-1.271970, 12.232400, -2.003610}, {-5.666990, 16.644501, -2.003610}, {-2.934080, 22.096701, -2.003610}, {5.485350, 21.796900, -2.003610}, {-9.529540, -8.640630, -2.003610}, {-18.530500, -9.604490, -2.003610}, {-23.978300, -0.905273, -2.003610}, {-8.505860, 13.948200, -2.003610}, {5.844480, 0.175781, -2.003610}, {2.568850, -14.167000, -2.003610}, {-3.150630, -14.084000, -2.003610}, {-3.762940, -21.275400, -2.003610}, {5.439700, -24.563499, -2.003610}, {18.504900, -11.914100, -2.003610}, {10.779500, -18.444300, -2.003610}, {18.397900, -21.985399, 1.220830}, {20.170700, -14.157200, 1.220830}, {30.334000, 5.124020, 1.220830}, {22.952101, 12.138700, 1.220830}, {1.458250, 18.208000, 1.220830}, {-5.561280, 20.157200, 1.220830}, {-6.191650, 15.467800, 1.220830}, {-1.050290, 9.691410, 1.220830}, {6.178960, 5.194340, 1.220830}, {5.005130, 2.787110, 1.220830}, {5.818360, -5.656250, 1.220830}, {-0.545410, -15.110400, 1.220830}, {1.841800, -19.858400, 1.220830}, {-2.108640, -21.996099, 1.220830}, {-5.788570, -24.927700, 1.220830}, {16.367901, -15.446300, 1.220830}, {28.053699, -17.132799, 1.220830}, {22.183300, 11.416000, -2.003610}};
    };

    class LAND_konecna: Office {
        lootPos = {{14.842300, -0.987793, -1.593640}, {16.872999, -2.868650, -1.593640}, {13.367200, -9.113770, -1.593640}, {5.094970, -9.986820, -1.593640}, {-24.828100, -1.178710, -1.593640}, {-14.074700, -7.304200, -1.593640}, {-19.078899, 0.982910, -1.593640}, {4.679440, 0.805176, -1.593640}, {-11.463900, -10.147500, -1.593640}};
    };

    class LAND_Tav_Panelak2: Residential {
        lootPos = {{2.762700, -5.625240, 5.436650}, {2.638670, -0.156494, 5.436650}, {3.487300, 2.768550, 5.436650}, {6.061520, 3.649660, 5.436650}, {6.709960, 0.734619, 5.436650}, {4.718750, -1.692630, 5.436650}, {-0.347656, -2.233150, 5.436650}, {0.814453, -1.739010, 2.710970}, {-0.545898, -2.294680, 2.710970}, {-0.415039, 4.251220, 1.328640}, {0.750000, -2.013180, 0.071426}, {0.644531, -1.864010, -2.628590}};
    };

    class LAND_Tav_panelak: Residential {
        lootPos = {{5.241210, -6.394530, 2.771440}, {6.711910, -5.432620, 2.771440}, {4.656250, -1.838380, 2.771440}, {6.695310, 0.225586, 2.771440}, {6.543950, 3.065190, 2.771440}, {3.402340, 3.323240, 2.771440}, {2.615230, 0.798096, 2.771440}, {2.704100, -4.983890, 2.771440}, {3.660160, -6.176510, 2.771440}, {-0.982422, -1.863280, 2.771440}, {-0.904297, 4.130860, 1.328640}, {0.942383, -2.104740, 0.071423}, {-2.568360, -1.686280, 0.071423}, {-2.695310, 3.424070, 0.071423}, {-6.249020, 3.013920, 0.071423}, {-6.072270, 0.556396, 0.071423}, {-5.754880, -2.038570, 0.071423}, {-6.664060, -4.344970, 0.071423}, {-5.492190, -6.705810, 0.071423}, {-2.416020, -4.194340, 0.071423}, {-3.708010, -6.172120, 0.071423}};
    };

    class LAND_Tav_Panelak3: Residential {
        lootPos = {{0.087891, 0.793457, -10.815400}, {-0.810547, 3.448240, -10.815400}};
    };

    class LAND_Big_Panelak: Residential {
        lootPos = {{3.305660, -9.234130, -14.752100}, {3.100590, -7.050050, -14.752100}, {5.369140, 0.495361, -14.752100}, {-0.236328, -3.167720, -14.752100}, {3.050780, -0.838379, -14.752100}};
    };

    class LAND_Posta: Residential {
        lootPos = {{-17.467800, -9.288090, 1.000440}, {-16.573200, -1.322270, 1.000440}, {-3.602540, -5.113770, 1.000440}, {9.721680, -6.610350, 1.000440}, {17.333000, -8.208500, 1.000440}, {13.363300, 7.195800, 1.000440}, {1.564450, 8.497070, 1.000440}};
    };

    class Land_GeneralStore_01a_PMC: Supermarket {
        lootPos = {{-8.287960, -0.435303, -1.201550}, {-4.332520, 5.515750, -1.201550}, {1.057430, 5.227910, -1.201550}, {7.365110, 2.400760, -1.201550}, {13.291300, 4.791990, -1.201550}, {3.069580, 7.470210, -1.201550}, {7.432130, -0.266724, -1.201550}, {13.517200, -1.040890, -1.201550}, {10.065700, -1.319460, -1.201550}, {3.422360, -3.463870, -1.201550}, {-1.897220, -2.650510, -1.201550}, {-7.287110, -1.957280, -1.201550}};
    };

    class Land_ruin_01_PMC: Residential {
        lootPos = {{-2.575680, 2.164430, -1.763580}, {-2.641720, -2.504880, -1.763580}, {0.851563, 1.675050, -1.763580}};
    };

    class Land_Ruin_Cowshed_a_PMC: Residential {
        lootPos = {{-3.573000, 2.807740, -2.312270}, {8.850770, -2.678710, -2.463880}, {-2.830690, -5.906130, -2.463880}, {8.898930, -5.667110, -2.463880}};
    };

    class Land_Ruin_Cowshed_b_PMC: Residential {
        lootPos = {{10.403200, 2.350460, -3.140480}, {2.992070, -3.366820, -3.139940}};
    };

    class Land_Ruin_Cowshed_c_PMC: Residential {
        lootPos = {{5.057370, 2.528810, -3.094860}};
    };

    class Land_FuelStation_Build_PMC: IndustrialFuel {
        lootPos = {{-1.297610, -0.527832, -1.336000}, {-1.511410, 1.303590, -1.336110}, {2.233760, 0.071045, -1.336110}};
    };

    class land_seb_vod_vez: Industrial {
        lootPos = {{2.028810, 0.084961, 15.155000}};
    };

    class land_seb_near_fac: Industrial {
        lootPos = {{-10.411600, -18.085899, 1.755520}};
    };

    class land_seb_rozvodna: Industrial {
        lootPos = {{-1.216800, 2.966800, 0.583904}};
    };

    class land_seb_mine_maringotka: Residential {
        lootPos = {{0.423828, 0.721191, -0.612675}, {-0.976563, -1.327640, -0.612675}};
    };

    class Land_hut_old01: Residential {
        lootPos = {{2.279300, -7.063480, -3.061070}, {-3.358400, -1.733400, -3.011780}, {-5.033200, -0.929688, -3.011200}};
    };

    class land_st_vez: MilitarySpecial {
        lootPos = {{-5.564450, 4.239750, -3.314760}, {-5.055660, -3.176270, -3.314760}, {4.121090, 3.928220, 2.427320}, {-1.733890, 2.688960, 6.408340}, {-4.235840, 1.297360, 6.408340}, {-3.803220, -1.092770, 6.408340}, {0.430664, 1.317870, 6.408340}, {-2.451660, -2.167480, 6.408340}, {-0.608398, -0.576660, -11.095000}, {-2.086910, 1.103030, -11.064900}, {0.259277, -3.896970, -3.314760}, {3.937500, 3.309570, -8.508250}};
    };

    class Land_dulni_bs: Residential {
        lootPos = {{2.767580, 2.700680, -1.752050}, {2.346680, -1.285640, -1.752050}, {-0.478516, -2.648440, -1.752050}, {-0.534180, 3.111330, -1.752050}};
    };

    class land_bunka: Office {
        lootPos = {{1.834960, 0.451172, -1.512440}, {-2.044920, 2.113770, -1.512450}, {3.073240, 2.416750, -1.512450}};
    };

    class land_pozorovatelna: Military {
        lootPos = {{-2.363280, -2.792480, -2.497670}, {3.114260, -2.929690, -2.497670}, {0.740234, 2.478520, -2.497670}, {-1.675780, -2.500490, 7.545090}, {-1.230470, 1.902830, 7.545090}, {2.884770, 2.084960, 7.545090}, {2.614260, -2.480960, 7.545090}, {0.491211, -0.290527, 7.545090}};
    };

    class land_panelova3: Residential {
        lootPos = {{-0.061523, 2.928710, 0.051006}, {6.444820, -0.967773, 0.051006}, {6.268070, -3.855470, 0.051006}, {-0.032715, -5.302730, 0.051006}};
    };

    class land_vysoky2: Residential {
        lootPos = {{6.741210, -2.955080, -15.767300}, {6.632320, 4.176760, -15.767300}, {0.729980, -2.635740, -15.705100}, {1.195800, 0.116211, -15.651300}, {2.841310, 2.357420, 13.124800}, {-0.511230, 2.166990, 13.124800}, {4.370120, 0.773438, 13.124800}, {9.613280, 13.243200, 13.124800}, {6.393070, -12.292000, 13.124800}};
    };

    class land_vysoky1: Residential {
        lootPos = {{-6.744140, 5.468750, 13.283300}, {0.545410, 4.383790, 13.283300}, {10.900400, 1.479490, 13.283300}, {6.041500, -13.429700, 13.283300}, {1.127440, -2.392580, 13.283300}};
    };

    class land_hotel_p2: Residential {
        lootPos = {{-3.269530, 3.027830, -7.299510}, {4.043950, -1.921880, -7.299510}, {9.481450, 0.459473, -7.329740}, {1.537110, 0.007813, 6.068930}, {4.533200, 0.862305, 6.068930}, {4.734380, -3.632320, 6.068930}};
    };

    class land_hotel_p1: Residential {
        lootPos = {{-12.100600, -3.292480, -4.924280}, {-3.093750, -1.663570, -4.924290}, {-1.781250, 3.532710, -4.924290}, {-5.978520, 3.802730, -4.924280}, {13.880900, 1.772460, -1.390910}, {13.751000, -9.811040, -1.390910}, {12.178700, 0.007813, -3.229230}};
    };

    class land_trubice: Industrial {
        lootPos = {{-2.367190, 2.762700, 2.594380}, {5.827150, 3.015630, 2.594380}, {1.576170, 0.709961, 2.594380}};
    };

    class land_dlouhy1: Residential {
        lootPos = {{-6.409180, -0.218750, -9.604950}, {-12.395000, 2.475590, -9.600910}, {1.384280, 3.153320, -9.610210}, {1.917480, 8.897460, -9.610570}, {-6.909180, 8.530270, -9.604610}, {-12.331500, 8.001950, -9.600960}, {-17.994600, 9.739260, -9.597130}, {-9.917970, 5.166990, -9.602590}, {6.958010, 9.379880, -9.613970}, {4.394040, 7.649410, -9.612240}, {5.439940, 9.804690, -5.091570}, {0.418457, -0.611328, -5.090310}, {-5.270510, 7.418950, -5.086310}, {2.203610, 8.790040, -5.091570}, {-8.938480, 6.083010, -5.086980}, {-9.498540, 11.308600, -5.084370}, {9.382320, 1.541990, -5.091570}, {8.953610, 9.747070, -5.091570}, {11.436000, 11.475600, -5.084350}};
    };

    class land_dlouhy2: Residential {
        lootPos = {{1.730470, 5.309570, -9.323140}, {-1.388670, -0.568848, -9.314740}, {-1.474610, -5.595700, -9.314500}};
    };

    class land_jzd_kr2: Farm {
        lootPos = {{1.921390, -4.905270, -6.173210}, {0.709961, 5.004880, -6.173210}, {1.862300, 7.371090, 1.406230}, {3.006840, -3.305660, 1.418730}, {-3.062500, -3.384770, -2.053390}, {-2.626460, 10.841800, -2.053390}};
    };

    class land_jzd_kr1: Farm {
        lootPos = {{-1.048340, -3.675780, -6.272790}, {1.638180, 0.775391, -6.272790}, {-1.419920, 5.104490, -6.272790}, {-0.993164, 2.946290, -2.152980}, {0.717285, -3.796880, -2.152980}};
    };

    class land_jzd_stodola2: Farm {
        lootPos = {{8.155270, 11.847700, -2.026200}, {5.512700, 5.637700, -2.026200}, {-4.161130, 3.673830, -2.026200}, {7.532230, -14.474100, -2.026200}, {1.169920, 0.390625, 1.311230}};
    };

    class land_jzd_stodola1: Farm {
        lootPos = {{-3.815920, -11.418000, -2.026200}, {1.738770, -6.206050, -2.026200}, {-4.134770, -0.265625, -2.026200}, {-1.048830, 0.180664, -2.026200}};
    };

    class land_jzd_silo_tes: Industrial {
        lootPos = {{2.749020, 6.522460, 0.214748}, {11.579600, 5.207030, 0.214748}, {5.729490, 0.644531, 0.214750}, {10.671900, -6.141600, 0.214748}, {0.979980, -2.648440, 0.214373}, {3.221680, -7.556640, 0.214746}, {-2.626950, -0.580078, 10.224000}};
    };

    class land_rozvodna: Residential {
        lootPos = {{-6.820800, -1.587890, -0.369419}};
    };

    class land_jzd_4silka: Industrial {
        lootPos = {{0.551758, -5.242190, 1.641330}, {0.224609, 1.376460, 1.641330}, {3.044920, 0.456055, 1.641330}, {4.316410, 5.941890, 5.514070}, {-3.531250, -5.801270, 5.514070}};
    };

    class land_jzd_bezstrechy: Residential {
        lootPos = {{-10.461400, -2.974610, -5.225040}, {0.170898, 0.177734, -5.225040}, {-0.368652, -3.346680, -5.225040}, {0.905762, 2.523440, -5.225040}, {0.802246, 2.123050, -0.404760}, {1.056150, 1.885740, -3.011790}, {8.002440, 0.787109, -5.225040}};
    };

    class land_AII_last_floor: MilitarySpecial {
        lootPos = {{-1.739750, -7.997560, 11.697600}, {-1.739750, -7.997560, 11.697600}, {-1.208010, 5.456050, 4.612900}, {-3.828130, 2.814940, 5.461830}};
    };

    class land_AII_middle_floor: MilitarySpecial {
        lootPos = {{-7.649410, 4.974120, 0.510368}, {-7.720700, 5.104980, 0.510216}, {-7.279790, -0.931152, 0.518509}, {8.474610, -2.325200, -4.633770}, {9.205080, 0.508301, -4.633770}, {4.367680, 3.799800, -4.633770}, {-0.669434, 2.748050, -4.633770}, {-10.359400, 5.035160, -4.633770}, {-13.976600, 9.100590, -4.633770}, {-8.021000, 1.223140, -4.633770}, {6.072270, -2.645510, -4.633770}, {-8.752930, 8.792970, -2.103790}};
    };

    class land_x_skladiste_low_tex: Industrial {
        lootPos = {{-8.123540, -0.323730, -2.850320}, {-2.315920, -4.275390, -2.597500}, {8.155270, -6.893070, -2.597500}, {0.398926, 4.800290, -2.826280}, {-6.024900, -7.643550, -2.850320}};
    };

    class Land_budova4_winter: MilitarySpecial {
        lootPos = {{-7.733890, 0.300049, -1.098240}, {-7.766600, 1.973880, -1.098240}, {-5.856450, 1.926510, -1.098240}, {-4.823730, 0.194336, -1.098240}, {-4.827150, -2.002440, -1.098240}, {-8.097660, -2.281490, -1.098240}, {-3.067870, 2.248050, -1.098240}, {-1.652830, -1.918210, -1.098240}, {-1.413090, -0.034668, -1.098240}, {0.266602, 1.768070, -1.098240}, {1.283690, 0.289307, -1.098240}, {1.819820, -2.286870, -1.098240}, {4.375490, 2.149410, -1.098240}, {5.618650, 1.713380, -1.098240}, {5.067870, -1.743160, -1.098240}, {2.547850, 2.337160, -1.098240}};
    };

    class land_domek_podhradi_1: Residential {
        lootPos = {{5.208620, 3.452150, -2.739100}, {3.047610, 1.616210, -2.739120}, {2.759400, -1.336910, -2.739150}, {-3.326170, 4.144040, -2.739090}};
    };

    class land_b_small1: Industrial {
        lootPos = {{-3.141850, 1.368160, -1.500330}, {-0.027588, -1.747070, -1.500330}, {-3.596190, -3.189450, -1.500330}, {-0.729004, -4.959960, -1.500330}};
    };

    class land_cast1: Industrial {
        lootPos = {{-5.395510, 6.560550, -4.383920}, {-5.685550, 9.042970, -4.383930}, {-5.572510, 9.082030, -4.383930}, {-3.053960, 14.552700, -4.383920}, {2.976810, 13.901400, -4.383920}, {-0.227783, 11.841800, -4.383930}, {1.449950, 3.272460, -3.503720}, {2.531980, -5.455080, -3.511800}, {-4.855960, -2.208980, -3.426600}, {1.042240, 0.729492, -1.065850}};
    };

    class land_vstup: Military {
        lootPos = {{-11.510000, -2.648440, -1.533120}, {-6.244630, -2.850590, -1.533120}, {-1.169920, -2.849610, -1.533120}, {2.708980, -2.850590, -1.533120}};
    };

    class land_panelova: Industrial {
        lootPos = {{16, -14.635700, -4.046660}, {3.791020, 1.256590, -4.089660}, {-15.463900, -8.380860, -4.089660}, {-14.353500, -0.195313, -4.089660}, {-1.617190, -12.831300, -4.089660}, {15.428700, -4.256350, 3.372730}, {9.193360, -14.627200, 3.371410}, {5.809570, 9.092530, 3.371410}, {9.955080, 9.793700, 3.371410}, {-8.115230, -2.982910, 3.344010}, {-15.259800, -8.566410, 3.344010}};
    };

    class land_garaze: Industrial {
        lootPos = {{-0.002930, -7.729250, -2.126580}, {3.733400, 1.027590, -2.126580}, {3.279300, 6.288570, -2.126580}, {6.729490, 7.341310, -2.126580}, {1.688480, -3.914790, -2.126580}};
    };

    class land_seb_bouda3: Industrial {
        lootPos = {{2.635740, -3.033200, -1.728720}, {-2.718750, -5.086910, -1.728730}, {-3.002930, -1.507810, -1.728770}, {-2.913570, 3.863280, -1.728760}, {3.128910, 3.015630, -1.728790}};
    };

    class Land_bouda2_vnitrek: Residential {
        lootPos = {{2.334960, 0.372559, -0.610508}, {-0.845703, 2.321290, -0.610506}, {-3.273440, -2.272950, -0.610508}};
    };

    class land_f_b2: Industrial {
        lootPos = {{1.583980, 0.899414, -4.241470}, {-1.333010, -0.991211, -4.241470}, {1.911130, -1.682620, -4.241470}};
    };

    class land_bud2: Industrial {
        lootPos = {{-2.320310, -1.250000, -1.768140}, {-1.580080, -2.312500, -1.774840}};
    };

    class land_senik: Residential {
        lootPos = {{-4.564450, -2.977050, -4.137210}, {13.164100, -6.801270, -4.280220}, {-4.232420, -0.213379, -4.131500}, {-3.440430, 4.799800, -4.121150}, {-7.644530, 3.814450, -4.123190}, {-14.088900, -5.666020, -4.142760}, {-1.259770, -3.443360, -4.138170}};
    };

    class land_zd_1: Residential {
        lootPos = {{2.142580, 3.374020, -3.672550}, {-1.606450, -3.250980, -3.672550}, {0.649902, -2.380860, -3.672550}, {-1.161130, 1.414060, -3.672550}, {2.887210, -2.800780, -3.672550}, {-4.451170, -3.012700, -4.042250}, {-5.943850, 3.138670, -4.042250}};
    };

    class Land_dum_ras: Residential {
        lootPos = {{-1.532230, 3.344240, -2.669580}, {1.366210, -0.507813, -2.669580}, {0.860352, 3.727050, 0.272604}, {-0.767578, -1.962890, 0.272604}, {-0.278320, -3.960450, 0.272604}};
    };

    class land_kostelik_final_2122: Church {
        lootPos = {{5.419920, -3.457030, -5.579180}, {-0.963379, 4.744140, -5.579190}, {1.090820, -2.792970, -5.579190}, {-1.390630, -5.185550, -5.579180}};
    };

    class land_plynom: Residential {
        lootPos = {{1.075680, -0.656250, 2.219290}, {-0.184082, -1.469730, 2.219290}, {-1.248540, -0.012695, 2.219290}, {1.137700, -0.887695, -2.603040}, {-1.387700, 0.386719, -2.603040}, {-0.822754, -1.333980, -2.603040}};
    };

    class land_seb_mine_main_opt: Industrial {
        lootPos = {{0.590332, 4.681150, -0.991421}, {-1.867680, 4.135250, -0.992432}, {0.142090, 2.532710, -0.995407}, {-3.434570, 2.681150, -0.995136}, {-3.014160, 2.595210, -5.084780}, {0.776855, -2.892090, -5.114860}, {-6.068850, 3.338380, 7.868400}, {-6.380860, -2.054690, 7.868400}, {-1.725100, -3.096680, 7.868400}, {-5.641110, -0.923340, 14.691300}, {-6.235840, 2.764650, 14.691300}};
    };

    class land_seb_mine_near: Industrial {
        lootPos = {{7.876460, -5.528810, -8.897900}, {9.029790, -5.591800, -8.897900}, {4.374510, -7.101560, -8.897900}};
    };

    class land_x_vez_tex: Residential {
        lootPos = {{0.433105, -1.027340, -0.273926}, {1.003910, 3.021970, -0.272713}, {1.364260, 0.449219, -0.273571}, {-1.897950, 3.221680, -0.272320}, {-5.005370, -3.643070, -0.274128}};
    };

    class land_marsh1: Residential {
        lootPos = {{3.769530, -5.731930, -3.958970}, {-0.986816, -4.260740, -3.958970}, {2.526370, 0.376465, -3.958970}, {4.789550, 2.929690, -3.958970}, {4.565430, 6.822270, -3.958970}, {-2.881840, 4.241210, -4.016840}};
    };

    class land_molovabud1: Industrial {
        lootPos = {{-2.445800, 2.207030, 1.279950}, {-4.681640, 1.955080, 1.279950}, {-7.928220, 6.291990, 1.279950}, {-1.810550, -1.291990, 1.567450}};
    };

    class land_f_b1: Industrial {
        lootPos = {{-4.459960, -2.846190, -2.215330}, {-1.811520, -5.011230, -2.215330}, {-5.322270, -5.218750, -2.215330}};
    };

    class land_seb_bouda1: Residential {
        lootPos = {{2.493160, -2.442380, 1.130670}, {-0.645996, -2.448240, 1.130670}, {-0.924316, -0.460938, 0.573963}, {-2.896970, 1.904300, 0.571716}, {2.805660, 1.233400, -3.289890}, {-2.386720, -0.893555, -3.289890}, {-2.766600, 2.416990, -3.289890}};
    };

    class Land_sara_stodola: Farm {
        lootPos = {{5.013670, 3.331180, -2.195230}, {2.517580, 1.057370, -2.195230}, {-1.309570, -1.029540, -2.195230}, {-4.244140, 4.023800, -2.195230}, {5.162110, -0.661621, -2.195230}};
    };

    class land_cihlovej_dum_mini: Residential {
        lootPos = {{-2.464600, -0.784180, -2.869420}, {-1.755860, 2.885250, -2.869420}, {2.765870, 2.081540, -2.869420}, {1.962650, -1.988770, -2.869420}, {0.010986, 0.876465, -2.869420}, {0.116455, 3.057620, -2.869420}};
    };

    class Land_hruzdum: Residential {
        lootPos = {{-1.671880, 3.718260, -4.728470}, {-2.522950, -1.022460, -1.168670}, {-1.949710, 1.220210, 1.598300}};
        lootPosZombie = {{-1.663820, -1.147950, -3.822910}, {-2.792480, 3.607420, -0.251995}};
        lootPosSmall = {{-2.844480, 0.796875, 2.353860}, {2.796140, 3.266600, -1.157550}, {-3.039790, 2.353030, -4.728470}};
    };

    class Land_cihlovej_dum_in: Residential {
        lootPos = {{-0.011719, 0.044190, -1.814730}, {-1.767580, 2.248050, -1.814700}, {-2.889650, -1.647950, -1.814700}, {1.842770, -2.079830, -1.814710}, {1.586910, -1.337400, -5.275880}, {1.228520, 2.573240, -5.275880}};
    };

    class land_sara_hasic_zbroj: Industrial {
        lootPos = {{5.922850, 1.356450, -2.662870}, {0.008789, -1.375490, -2.662870}, {-1.827150, 1.930660, -2.662870}};
        lootPosZombie = {{3.085940, -1.723630, -1.777870}, {6.196290, -0.181641, -1.777870}};
        lootPosSmall = {{6.813480, -2.168460, -2.662870}, {-3.301760, -2.491210, -2.672870}};
    };

    class land_smd_hlaska: Military {
        lootPos = {{-0.724609, 0.822266, 3.770920}};
        lootPosZombie = {{-0.184570, -3.135740, -2.259910}};
        lootPosSmall = {{1.062010, -0.864258, 3.770920}, {-1.046880, -0.759766, 3.770920}};
    };

    class land_smd_cihlovej_dum_mini: Residential {
        lootPos = {{0.623047, 2.397460, -2.589420}, {0.099609, 0.995117, -2.869420}, {-4.059570, -1.019530, -2.869420}, {-8.863280, 2.894530, -2.869420}};
        lootPosZombie = {{1.817380, 0.794922, -1.994420}, {-1.795900, 1.107420, -1.994420}, {-6.541020, 1.046880, -1.994420}};
        lootPosSmall = {{2.894530, -1.728520, -1.919420}, {2.927730, -2.341800, -2.869420}, {-6.096680, 3.109380, -2.869420}, {-2.196290, 2.937500, -2.869420}};
    };

    class land_smd_dum_istan4: Residential {
        lootPos = {{2.607420, -2.421880, -4.352370}};
        lootPosZombie = {{0.323242, 5.661130, -6.380880}};
        lootPosSmall = {};
    };

    class land_smd_dum_olez_istan2_open2: Residential {
        lootPos = {{-0.162109, 4.918460, -0.431501}, {3.253910, 2.522460, -0.421501}, {-3.519530, -3.801760, 0.128499}, {-1.569340, 0.389648, -0.411501}};
        lootPosZombie = {{5.450200, -3.217290, 0.207455}};
        lootPosSmall = {{-6.446290, 0.004883, 0.198499}, {-4.307620, 5.720700, 0.568499}, {0.628906, 4.829100, 0.338499}, {-3.948240, -3.039060, 0.128499}, {1.196290, -5.446290, -0.011501}};
    };

    class land_smd_dum_olez_istan2_open: Residential {
        lootPos = {{0.018555, 4.611330, 0.058498}, {0.412598, -4.662110, 0.338498}, {-5.715820, 5.634770, -0.431501}, {-4.512700, -4.876950, -0.431501}};
        lootPosZombie = {{4.923830, -3.121090, 0.031750}};
        lootPosSmall = {{-1.463380, 6.050780, 0.718499}, {-4.686520, -3.719730, 0.528499}, {-0.162109, -4.692380, 0.018498}, {-6.411130, 5.083980, 0.798498}};
    };

    class land_smd_dum_olez_istan1_open: Residential {
        lootPos = {{-5.437500, -4.383790, 1.354970}, {5.757810, -3.319340, 1.354970}, {1.535160, -2.062500, 1.354970}, {-2.149410, -4.564450, -1.853980}, {-6.796880, 2.144530, -1.843980}, {3.615230, -0.371094, -1.824000}};
        lootPosZombie = {{1.336910, -5.024410, -1.517800}, {-4.221680, 4.753910, -1.663030}};
        lootPosSmall = {{-6.119140, -4.144530, 2.164970}, {2.470700, 3.677730, 1.964970}, {6.427730, -0.500000, 1.344970}, {7.480470, 2.371090, -1.434000}, {-1.980470, -4.165040, -1.073980}, {-7.602540, -4.063480, -0.883982}, {-7.749020, 2.510740, -1.163980}, {5.853520, 2.376950, -1.854000}};
    };

    class land_smd_dum_istan3_hromada: Residential {
        lootPos = {{0.293945, -1.601560, -3.328000}, {-1.914060, -1.653320, -3.328000}};
        lootPosZombie = {{-0.154297, 5.011720, -2.466890}, {-9.951170, 1.999020, -2.466890}, {10.299800, 1.822270, -2.688860}};
        lootPosSmall = {{0.551758, -4.126950, -3.328000}, {0.626953, -0.547852, -3.328000}};
    };

    class land_smd_army_hut2: Military {
        lootPos = {{0.447266, -4.654300, -1.333280}};
        lootPosZombie = {{0.552734, 6.068360, -0.515976}, {-3.868160, -5.687500, -1.132280}};
        lootPosSmall = {{-0.257813, -5.025390, -0.623276}, {3.028320, -6.158200, -1.333280}};
    };

    class land_smd_ss_hangard_withdoor: MilitaryIndustrial {
        lootPos = {{0.236328, 3.420900, -5.872540}, {-14.073200, 22.499001, -5.872540}, {13.189500, 22.203100, -5.872540}, {-13.887700, -10.545900, -5.872540}, {2.107420, -19.849600, -5.872540}};
        lootPosZombie = {{0.128906, -25.027300, -5.424650}, {-16.789101, 1.981450, -5.424650}, {0.074219, 26.565399, -5.424650}, {16.663099, -7.108400, -5.424650}};
        lootPosSmall = {{14.398400, 12.285200, -5.872540}, {0.289063, -0.197266, -5.872540}, {-14.838900, -20.647499, -5.872540}, {14.857400, -20.508801, -5.872540}};
    };

    class land_budova5: Military {
        lootPos = {{-2.040040, 2.898440, -1.980590}};
        lootPosZombie = {{-3.044920, 2.033200, -1.402110}};
        lootPosSmall = {{-1.961910, -0.314453, -1.980590}};
    };

    class land_smd_army_hut2_int: Military {
        lootPos = {{-0.848633, -1.243160, -0.948334}, {-1.923830, -0.003906, -0.948334}, {2.795900, -0.014648, -0.948334}};
        lootPosZombie = {{-3.353520, -2.653320, -0.407364}, {0.475586, 3.374020, -0.350555}};
        lootPosSmall = {{0.159180, -1.264650, -0.498337}, {3.079100, 1.963870, -0.948334}};
    };

    class land_smd_strazni_vez: Military {
        lootPos = {{-1.680660, -1.302730, 2.002990}};
        lootPosZombie = {{-1.148440, 0.125977, 2.287990}, {1.041020, 2.458980, -1.769740}};
        lootPosSmall = {{-0.902344, -1.293950, 1.412990}, {-1.925780, 1.286130, 1.412990}};
    };

    class land_smd_army_hut3_long_int: Military {
        lootPos = {{0.643555, 5.242190, -0.073914}, {-2.788090, 3.136720, -1.273910}, {-2.809570, 5.274410, -0.863907}, {-3.130860, -3.358400, -1.273910}, {-0.875977, -0.687500, -1.273910}};
        lootPosZombie = {{3.375980, 0.145508, -0.938461}, {-4.527340, 0.833984, -1.222900}};
        lootPosSmall = {{1.687500, 5.275390, -0.863907}, {-0.604492, -3.368160, -0.563904}, {1.916990, 1.278320, -1.273910}};
    };

    class land_smd_dum_mesto3_istan: HouseRoaming {
        lootPosZombie = {{5.845700, -0.063477, -2.348980}, {-6.132810, 0.045898, -2.348980}};
    };
};
