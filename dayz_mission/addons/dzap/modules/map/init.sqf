if(isServer || {!DZE_MAP_MARKER_ADDON_ENABLE}) exitWith {};
diag_log text "MAP MARKER: loading functions...";
call compile preprocessFileLineNumbers "addons\dzap\modules\map\functions.sqf";
DZE_MAP_MARKER_LOOP_RUNNING = false;
DZE_SELF_MARKER_TOGGLE = false;
DZE_FRIENDLY_MARKER_TOGGLE = false;
DZE_VEHICLE_MARKER_TOGGLE = false;
DZE_ZOMBIE_MARKER_TOGGLE = false;
DZE_MAP_MARKER_UIDS = [];
if(DZE_MAP_MARKER_ALLOW_SELF) then {
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemGPS","Toggle Self","call fnc_map_marker_self_toggle;","true"]];
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemMap","Toggle Self","call fnc_map_marker_self_toggle;","true"]];
};
if(DZE_MAP_MARKER_ALLOW_FRIENDLIES) then {
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemGPS","Toggle Friendlies","call fnc_map_marker_friendly_toggle;","true"]];
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemMap","Toggle Friendlies","call fnc_map_marker_friendly_toggle;","true"]];
};
if(DZE_MAP_MARKER_ALLOW_VEHICLES) then {
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemGPS","Toggle Vehicles","call fnc_map_marker_vehicle_toggle;","true"]];
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemMap","Toggle Vehicles","call fnc_map_marker_vehicle_toggle;","true"]];
};
if(DZE_MAP_MARKER_ALLOW_ZOMBIES) then {
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemGPS","Toggle Zombies","call fnc_map_marker_zombie_toggle;","true"]];
    DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemMap","Toggle Zombies","call fnc_map_marker_zombie_toggle;","true"]];
};