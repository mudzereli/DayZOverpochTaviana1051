if (isDedicated) exitWith {};
diag_log text "TAKECLOTHES: initializing...";
call compile preprocessFileLineNumbers "addons\takeclothes\config.sqf";
{
    DZ_TAKECLOTHES_MAP = DZ_TAKECLOTHES_MAP + [[_x,"Skin_" + _x]];
} forEach DZ_TAKECLOTHES_MATCH;
DZ_TAKECLOTHES_LIST = [];
{
    DZ_TAKECLOTHES_LIST = DZ_TAKECLOTHES_LIST + [_x select 0];
} forEach DZ_TAKECLOTHES_MAP;
diag_log text format["TAKECLOTHES: Added %1 base clothing matches...",count DZ_TAKECLOTHES_MATCH];
[] spawn {
    private ["_isTargetSelf","_targetClassName","_isTargetAlive","_canStripTarget","_isTargetStripped"];
    diag_log text "TAKECLOTHES: waiting for login...";
    waitUntil{!isNil "PVDZE_plr_LoginRecord"};
    diag_log text "TAKECLOTHES: hooking...";
    S_PLAYER_CLOTHES = -1;
    while {true} do {
        if(!isNull player && !(isNull cursorTarget)) then {
            _isTargetSelf = cursorTarget == player;
            _targetClassName = typeOf cursorTarget;
            _isTargetAlive = alive cursorTarget;
            _canStripTarget = _targetClassName in DZ_TAKECLOTHES_LIST;
            _isTargetStripped = cursorTarget getVariable["clothesTaken",false];
            if ((player distance cursorTarget) <= 5 && {!_isTargetSelf} && {!_isTargetAlive} && {_canStripTarget} && {!_isTargetStripped}) then {
                if (S_PLAYER_CLOTHES < 0) then {
                    S_PLAYER_CLOTHES = player addAction ["<t color='#ffbb33'>" + "Take Clothes" + "</t>", "addons\takeclothes\player_takeClothes.sqf",cursorTarget,-10,false,true,"",""];
                };
            } else {
                player removeAction S_PLAYER_CLOTHES;
                S_PLAYER_CLOTHES = -1;
            };
        };
        sleep 2;
    };
};