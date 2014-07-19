private ["_spawnChance", "_spawnMarker", "_spawnRadius", "_markerRadius", "_item", "_debug", "_start_time", "_loot", "_loot_amount", "_loot_box", "_wait_time", "_spawnRoll", "_position", "_event_marker", "_loot_pos", "_debug_marker","_loot_box", "_hint"];
 
_spawnChance =  0.85; // Percentage chance of event happening
_markerRadius = 350; // Radius the loot can spawn and used for the marker
_debug = false; // Puts a marker exactly were the loot spawns
 
_loot_box = "RUVehicleBox";
_loot_lists = [
[
["RH_hk416acog","m8_sharpshooter","BAF_L85A2_RIS_SUSAT","SCAR_L_STD_Mk4CQT"],
["20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD","20Rnd_556x45_Stanag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","15Rnd_9x19_M9SD"]
],

[
["RH_hk417aim","RH_hk417aim","RH_hk417acog","RH_hk417acog","RH_hk417sdeotech"],
["RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_hk417","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417"]
],

[
["vil_RPK74M_P29","vil_RPK74M_P29","vil_VSS_PSO"     ],
["vil_45Rnd_545x39_AK","vil_45Rnd_545x39_AK","vil_45Rnd_545x39_AK","vil_45Rnd_545x39_AK","vil_45Rnd_545x39_AK","vil_45Rnd_545x39_AK","vil_45Rnd_545x39_AK","10Rnd_9x39_SP5_VSS","10Rnd_9x39_SP5_VSS","10Rnd_9x39_SP5_VSS","10Rnd_9x39_SP5_VSS"]
],

[
["vil_SVD_P21"],
["10Rnd_762x54_SVD","10Rnd_762x54_SVD","10Rnd_762x54_SVD","10Rnd_762x54_SVD","10Rnd_762x54_SVD"]
],

[
["BAF_LRR_scoped"],
["5Rnd_86x70_L115A1","5Rnd_86x70_L115A1","5Rnd_86x70_L115A1","5Rnd_86x70_L115A1"]
],

[
["M107"],
["10Rnd_127x99_m107","10Rnd_127x99_m107"]
],

[
["USSR_cheytacM200"],
["USSR_5Rnd_408","USSR_5Rnd_408","USSR_5Rnd_408","USSR_5Rnd_408"]
],

[
["DMR","M4SPR","SCAR_H_LNG_Sniper","vil_SV_98"],
["vil_10Rnd_762x54_SV","vil_10Rnd_762x54_SV","vil_10Rnd_762x54_SV","vil_10Rnd_762x54_SV","20rnd_762x51_B_SCAR","20rnd_762x51_B_SCAR","20rnd_762x51_B_SCAR","20rnd_762x51_B_SCAR","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24","20Rnd_762x51_DMR","5Rnd_762x51_M24"]
],

[
["MG36","Mk_48_DZ","M240_DZ","M249","M8_SAW"],
["100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249","100Rnd_556x45_BetaCMag","100Rnd_762x51_M240","200Rnd_556x45_M249"]
],

[
["M16A4","M16A4_GL","M16A4_ACG_GL","M16A4_ACG","M4A1","M4A1_HWS_GL","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo"],
["30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"]
],

[
["FHQ_ACR_TAN_HAMR_GL_F","FHQ_ACR_TAN_HAMR_GL_F","FHQ_ACR_SNW_CCO_GL","FHQ_ACR_SNW_CCO_GL","FHQ_ACR_BLK_HWS_GL_SD_F","FHQ_ACR_BLK_HWS_GL_SD_F"],
["FHQ_rem_30Rnd_680x43_ACR_SD","FHQ_rem_30Rnd_680x43_ACR_SD","FHQ_rem_30Rnd_680x43_ACR_SD","FHQ_rem_30Rnd_680x43_ACR_SD","FHQ_rem_30Rnd_680x43_ACR_SD","FHQ_rem_30Rnd_680x43_ACR_SD","FHQ_rem_30Rnd_680x43_ACR_SD","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR","FHQ_rem_30Rnd_680x43_ACR"]
]

];
_loot = _loot_lists call BIS_fnc_selectRandom;
 
_loot_amount = 75;
_wait_time = 900; 
 
// Dont mess with theses unless u know what yours doing
_start_time = time;
_spawnRadius = 5000;
_spawnMarker = 'center';
 
if (isNil "EPOCH_EVENT_RUNNING") then {
EPOCH_EVENT_RUNNING = false;
};
 
// Check for another event running
if (EPOCH_EVENT_RUNNING) exitWith {
diag_log("Event already running");
};
 
// Random chance of event happening
_spawnRoll = random 1;
if (_spawnRoll > _spawnChance and !_debug) exitWith {};
 
// Random location
_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
 
diag_log(format["Spawning loot event at %1", _position]);
 
_event_marker = createMarker [ format ["loot_event_marker_%1", _start_time], _position];
_event_marker setMarkerShape "ELLIPSE";
_event_marker setMarkerColor "ColorRed";
_event_marker setMarkerAlpha 0.5;
_event_marker setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];
 
_loot_pos = [_position,0,(_markerRadius - 100),10,0,2000,0] call BIS_fnc_findSafePos;
 
if (_debug) then {
_debug_marker = createMarker [ format ["loot_event_debug_marker_%1", _start_time], _loot_pos];
_debug_marker setMarkerShape "ICON";
_debug_marker setMarkerType "mil_dot";
_debug_marker setMarkerColor "ColorRed";
_debug_marker setMarkerAlpha 1;
};
 
diag_log(format["Creating ammo box at %1", _loot_pos]);
 
// Create ammo box
_loot_box = createVehicle [_loot_box,_loot_pos,[], 0, "NONE"];
clearMagazineCargoGlobal _loot_box;
clearWeaponCargoGlobal _loot_box;
 
// Cut the grass around the loot position
_clutter = createVehicle ["ClutterCutter_small_2_EP1", _loot_pos, [], 0, "CAN_COLLIDE"];
_clutter setPos _loot_pos;
// cut the grass    end
 
// Add loot
{
_loot_box addWeaponCargoGlobal [_x,1];
} forEach (_loot select 0);
{
_loot_box addMagazineCargoGlobal [_x,1];
} forEach (_loot select 1);
 
// Send Top Right message to users , requires Remote message script
_hint = parseText format["<t align='center' color='#FF0000' shadow='2' size='1.75'>Military Crate</t><br/><t align='center' color='#ffffff'>A special forces unit lost a precious cargo, Check your Map for the Location!</t>"];
customRemoteMessage = ['hint', _hint];
publicVariable "customRemoteMessage";

// Send center message to users 
//[nil,nil,rTitleText,"A special forces unit lost a precious cargo, Check your Map for the Location!", "PLAIN",10] call RE;

diag_log(format["Loot event setup, waiting for %1 seconds", _wait_time]);

// Wait
sleep _wait_time;
 
// Clean up
EPOCH_EVENT_RUNNING = false;
deleteVehicle _loot_box;
deleteMarker _event_marker;
if (_debug) then {
deleteMarker _debug_marker;
};