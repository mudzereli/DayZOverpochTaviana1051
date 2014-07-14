private["_version"];
_version = "1.1.0";
diag_log text format["WMOD v%1: loading...",_version];
call compile preprocessFileLineNumbers "addons\wmod\config.sqf";
call compile preprocessFileLineNumbers "addons\wmod\lib.sqf";
call compile preprocessFileLineNumbers "addons\wmod\functions.sqf";
if(isServer) exitWith {};
call compile preprocessFileLineNumbers "overwrites\click_actions\init.sqf";
if (isNil "DZE_CLICK_ACTIONS_BUILD") exitWith {
    diag_log text "WMOD: ERROR -- Click Actions Handler missing!";
};
if (DZE_CLICK_ACTIONS_BUILD != DZE_CRV_DEPLOYABLE) exitWith {
    diag_log text format["WMOD: ERROR -- Click Actions Handler loaded build #%1! Required build #%2!",DZE_CLICK_ACTIONS_BUILD,DZE_CRV_DEPLOYABLE];
};

DZE_WEAPON_MOD_INVENTORY = [];
DZE_WEAPON_MOD_BUSY = false;
DZE_WEAPON_MOD_INVENTORY_SHOW = false;

"DZE_WMOD_LOAD_INVENTORY" addPublicVariableEventHandler {
    ((_this select 1) call fnc_wmod_setWeaponModInventory);
};

call fnc_wmod_combineWeaponMods;
call fnc_wmod_loadClickActions;
call fnc_wmod_loadPlayerInventory;