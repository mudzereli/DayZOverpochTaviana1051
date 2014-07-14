if(isServer) exitWith {};
private["_build"];
_build = 3;
// don't initialize more than once
if(isNil "DZE_CLICK_ACTIONS_BUILD") then {
    diag_log text "CLICK ACTIONS: loading...";
    call compile preprocessFileLineNumbers "overwrites\click_actions\config.sqf";
    player_selectSlot = compile preprocessFileLineNumbers "overwrites\click_actions\ui_selectSlot.sqf";
    DZE_CLICK_ACTIONS_BUILD = _build;
} else {
    if(_build != DZE_CLICK_ACTIONS_BUILD) then {
        diag_log text format["CLICK ACTIONS: tried to load build #%1 but #%2 already loaded!",_build,DZE_CLICK_ACTIONS_BUILD];
    } else {
        diag_log text "CLICK ACTIONS: already loaded (not an error)!";
    };
};