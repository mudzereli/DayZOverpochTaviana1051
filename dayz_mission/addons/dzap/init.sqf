private["_version"];
_version = "1.0.0";
diag_log text format["DZAP: loading version %1",_version];
diag_log text format["DZAP: loading config..."];
call compile preprocessFileLineNumbers "dzap_config.sqf";
diag_log text format["DZAP: loading function library..."];
call compile preprocessFileLineNumbers "addons\dzap\lib.sqf";
if(DZE_CLICK_ACTIONS_ENABLE) then {
    diag_log text format["DZAP: loading click actions handler..."];
    call compile preprocessFileLineNumbers "overwrites\click_actions\init.sqf";
    if(DZE_DEPLOYABLES_ENABLE) then {
        diag_log text format["DZAP: loading deploy anything addon..."];
        call compile preprocessFileLineNumbers "addons\dzap\modules\bike\init.sqf";
    };
    if(DZE_WEAPON_MOD_ENABLE) then {
        diag_log text format["DZAP: loading weapon mod addon..."];
        call compile preprocessFileLineNumbers "addons\dzap\modules\wmod\init.sqf";
    };
    if(DZE_SUICIDE_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading suicide addon..."];
        call compile preprocessFileLineNumbers "addons\dzap\modules\suicide\init.sqf";
    };
    if(DZE_TAKECLOTHES_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading clothes addon..."];
        call compile preprocessFileLineNumbers "addons\dzap\modules\clothes\init.sqf";
    };
    if(DZE_KITS_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading kits addon..."];
        call compile preprocessFileLineNumbers "addons\dzap\modules\kits\init.sqf";
    };
    if(DZE_MAP_MARKER_ADDON_ENABLE) then {
        diag_log text format["DZAP: loading map addon..."];
        call compile preprocessFileLineNumbers "addons\dzap\modules\map\init.sqf";
    };
};