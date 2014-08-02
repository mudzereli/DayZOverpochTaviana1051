private["_version"];
_version = "1.1.0";
diag_log text format["WMOD v%1: loading...",_version];
call compile preprocessFileLineNumbers "addons\dzap\modules\wmod\functions.sqf";
if(isServer) exitWith {};

DZE_WEAPON_MOD_INVENTORY = [];
DZE_WEAPON_MOD_BUSY = false;
DZE_WEAPON_MOD_INVENTORY_SHOW = false;

"DZE_WMOD_LOAD_INVENTORY" addPublicVariableEventHandler {
    ((_this select 1) call fnc_wmod_setWeaponModInventory);
};

call fnc_wmod_combineWeaponMods;
call fnc_wmod_loadClickActions;
call fnc_wmod_loadPlayerInventory;