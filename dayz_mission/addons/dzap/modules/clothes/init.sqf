if (isServer) exitWith {};
diag_log text "TAKECLOTHES: initializing...";
{
    if(_x != "Default") then {DZE_TAKECLOTHES_MAP set [count DZE_TAKECLOTHES_MAP,[getText(configFile >> "CfgSurvival" >> "Skins" >> _x >> "playerModel"),_x]];};
} forEach ((configFile >> "CfgSurvival" >> "Skins") call DZEF_fnc_getClasses);
DZE_TAKECLOTHES_BUSY = false;
DZE_TAKECLOTHES_LIST = [];
{
    DZE_TAKECLOTHES_LIST set [count DZE_TAKECLOTHES_LIST,_x select 0];
} forEach DZE_TAKECLOTHES_MAP;
diag_log text format["TAKECLOTHES: Added %1 base clothing matches...",count DZE_TAKECLOTHES_MAP];
[] spawn {
    private ["_isTargetSelf","_targetClassName","_isTargetAlive","_canStripTarget","_isTargetStripped","_isInStripRange"];
    diag_log text "TAKECLOTHES: waiting for login...";
    waitUntil{!isNil "PVDZE_plr_LoginRecord"};
    diag_log text "TAKECLOTHES: hooking...";
    S_PLAYER_CLOTHES = -1;
    while {true} do {
        if(!isNull player) then {
            if(isNull cursorTarget) exitWith { 
                player removeAction S_PLAYER_CLOTHES;
                S_PLAYER_CLOTHES = -1;
            };
            _isTargetSelf       = cursorTarget == player;
            _targetClassName    = typeOf cursorTarget;
            _isTargetAlive      = alive cursorTarget;
            _canStripTarget     = _targetClassName in DZE_TAKECLOTHES_LIST;
            _isTargetStripped   = cursorTarget getVariable["clothesTaken",false];
            _isInStripRange     = (player distance cursorTarget) <= 5;
            if (_isInStripRange && {!_isTargetSelf} && {!_isTargetAlive} && {_canStripTarget} && {!_isTargetStripped} && {!DZE_TAKECLOTHES_BUSY}) then {
                if (S_PLAYER_CLOTHES < 0) then {
                    S_PLAYER_CLOTHES = player addAction [format["<t color='%1'>",DZE_COLOR_WARNING_HEX] + "Take Clothes" + "</t>", "addons\dzap\modules\clothes\takeclothes.sqf",cursorTarget,-10,false,true,"",""];
                };
            } else {
                player removeAction S_PLAYER_CLOTHES;
                S_PLAYER_CLOTHES = -1;
            };
        };
        sleep 2;
    };
};