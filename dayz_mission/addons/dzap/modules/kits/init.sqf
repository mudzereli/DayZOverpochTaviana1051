if (!DZE_KITS_ADDON_ENABLE) exitWith {};
if(isServer) exitWith {dayz_allowedObjects set [count dayz_allowedObjects,"VaultStorage"];};
private["_kitName","_spawnDonatorKit"];
diag_log text "KITS: loading functions";
fnc_spawn_donator_kit = compile preprocessFileLineNumbers "addons\dzap\modules\kits\spawnkit.sqf";
diag_log text "KITS: waiting for player login";
[] spawn { 
    waitUntil{!(isNil "PVDZE_plr_LoginRecord");};
    diag_log text "KITS: checking if player is admin";
    if((getPlayerUID player) in DZE_KITS_ADMINS) then {
        diag_log text "KITS: player is admin adding kit functionality";
        {
            _kitName  = _x select 0;
            _kitItems = _x select 1;
            diag_log text format["KITS: trying to load %1 :: %2",_kitName, str _kitItems];
            DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,["ItemVault",_kitName,format["%1 spawn fnc_spawn_donator_kit;",_foreachindex],"true"]];
        } forEach DZE_KITS_CONFIG;
    };
};
