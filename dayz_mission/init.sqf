/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 13;	//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio true;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea = 2500; // Default = 1500

MaxVehicleLimit = 100; // Default = 50
MaxDynamicDebris = 700; // Default = 100
dayz_MapArea = 20000; // Default = 10000

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"],["any","any","any","any",10,"Military"],["any","any","any","any",25,"Treasure"],["any","any","any","any",40,"Supplyitems"],["any","any","any","any",55,"Construction"]];
dayz_fullMoonNights = true;

dayz_minpos = -26000; 
dayz_maxpos = 26000;

dayz_sellDistance_vehicle = 30;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

dayz_paraSpawn = false;

dayz_maxAnimals = 5; // Default: 8
dayz_tameDogs = true;
DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100

DZE_BuildOnRoads = false; // Default: False

//### BEGIN MODIFIED CODE: config
	DZE_SelfTransfuse = true;
	DZE_PlayerZed = false;
	DZE_StaticConstructionCount = 1;
	DefaultWeapons = ["RH_usp","ItemFlashlight","ItemToolbox","ItemMap"];
	DefaultMagazines = ["RH_15Rnd_9x19_usp","RH_15Rnd_9x19_usp","ItemBandage","ItemBandage","ItemPainkiller","PartGeneric"];
	DZE_ForceNameTagsOff = true;
	DZE_ForceNameTagsInTrader = true;
	DZE_BuildingLimit = 200;
	DZE_R3F_WEIGHT = false;
	DZE_MissionLootTable = true;
	DZE_DeathMsgGlobal = true;
	DZE_ConfigTrader = false;
	MaxDynamicDebris = 0;
	dayz_maxLocalZombies = 10;
	dayz_maxZeds = 250;
	DZE_GodModeBase = {
		(typeOf _this) in [
			"MetalFloor_DZ",
			"CinderWallHalf_DZ",
			"CinderWall_DZ",
			"CinderWallSmallDoorway_DZ",
			"CinderWallDoorSmall_DZ",
			"CinderWallDoorSmallLocked_DZ",
			"CinderWallDoorway_DZ",
			"CinderWallDoor_DZ",
			"CinderWallDoorLocked_DZ"
		]
	};
//### END MODIFIED CODE: config

// DZEdebug = true;

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
//### BEGIN MODIFIED CODE: addons 
// snap build
call compile preprocessFileLineNumbers "custom\compiles.sqf";
// deployable bike
call compile preprocessFileLineNumbers "addons\bike\init.sqf";
//### END MODIFIED CODE: addons 
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_13.Tavi\dynamic_vehicle.sqf";				//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_13.Tavi\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
};

//Start Dynamic Weather

//>MODIFIED CODE: weather
execVM "overwrites\DynamicWeatherEffects.sqf";
//<MODIFIED CODE: weather

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

//### BEGIN MODIFIED CODE: addons 

// suicide
call compile preprocessFileLineNumbers "addons\suicide\init.sqf";

// take clothes
call compile preprocessFileLineNumbers "addons\takeclothes\init.sqf";

// fast trading
call compile preprocessFileLineNumbers "overwrites\fast_trading\init.sqf";

//### mods maintained by other people >>

// safe zones
call compile preprocessFileLineNumbers "addons\safezones\init.sqf";

// delete unused parachutes
call compile preprocessFileLineNumbers "addons\antipara\init.sqf";

// scrolling credits
call compile preprocessFileLineNumbers "addons\credits\init.sqf";

// economy
call compile preprocessFileLineNumbers "eco\client_init.sqf";

// overwrite unlock door to knockout
player_unlockDoor = compile preprocessFileLineNumbers "overwrites\knockout\player_unlockDoor.sqf";

// fix zombies not spawning with loot
zombie_generate = compile preprocessFileLineNumbers "overwrites\loot\zombie_generate.sqf";

// self actions
fnc_usec_selfActions = compile preprocessFileLineNumbers "overwrites\fn_selfActions.sqf";

// service point
if(!isServer) then {execVM "addons\service_point\service_point.sqf";};

// towing
execVM "addons\R3F_ARTY_AND_LOG\init.sqf";

//### END MODIFIED CODE: addons