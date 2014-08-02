private ["_model","_m","_s","_result","_clothesName","_added"];

if(DZE_TAKECLOTHES_BUSY) exitWith {taskHint ["You are already busy taking clothes!", DZE_COLOR_DANGER, "taskFailed"];};

DZE_TAKECLOTHES_BUSY = true;
DZE_TAKECLOTHES_CURRENT_BODY = _this select 3;
_model = typeOf DZE_TAKECLOTHES_CURRENT_BODY;

player removeAction S_PLAYER_CLOTHES;
S_PLAYER_CLOTHES = -1;

{
    _m = _x select 0;
    _s = _x select 1;
    if(_m == _model) then {
        _result = [
            ["!(call DZEF_fnc_can_do)","You can't take their clothes right now!"],
            ["r_interrupt","You were interrupted while trying to take their clothes!"],
            ["DZE_TAKECLOTHES_CURRENT_BODY getVariable['clothesTaken',false]", "Those clothes have already been taken!"]
        ] call DZEF_fnc_interruptableAction;
        if(_result == "nil") then {
            _clothesName = getText (configFile >> "CfgMagazines" >> _s >> "displayName");
            _added = [player,_s] call BIS_fnc_invAdd;
            if (_added) then {
                DZE_TAKECLOTHES_CURRENT_BODY setVariable["clothesTaken",true,true];
                _result = format["You took some %1 clothes from the body!",_clothesName];
                hint _result;
                taskHint [_result, DZE_COLOR_PRIMARY, "taskDone"];
            } else {
                _result = format["You don't have enough space for %1 clothes!",_clothesName];
                hint _result;
                taskHint [_result, DZE_COLOR_DANGER, "taskFailed"];
            };

        } else {
            hint _result;
            taskHint [_result, DZE_COLOR_DANGER, "taskFailed"];
        };
        DZE_TAKECLOTHES_CURRENT_BODY = nil;
        if (true) exitWith {};
    };
} forEach DZE_TAKECLOTHES_MAP;
DZE_TAKECLOTHES_BUSY = false;