DZEF_fnc_closeGearDisplay = {
    private["_display"];
    disableSerialization;
    _display = findDisplay 106;
    if(!(isNull _display)) then {
        _display closeDisplay 0;
    };
};

DZEF_fnc_selectProperMuzzle = {
    private["_weapon","_unit","_muzzles","_muzzle"];
    _unit    = _this select 0;
    _weapon  = _this select 1;
    _muzzles = getArray(configFile >> "cfgWeapons" >> _weapon >> "muzzles");
    _muzzle = _muzzles select 0;
    if (_muzzle == "" || {"this" == _muzzle}) then {
        _muzzle = _weapon;
    };
    _unit selectWeapon _muzzle;
    _muzzle
};

DZEF_fnc_getClasses = {
    private ["_classes"];
    _classes = [];
    for "_i" from 0 to ((count _this) - 1) do { 
        if (isClass (_this select _i)) then { 
            _classes set [count _classes, configName (_this select _i)];
        };
    };
    _classes 
};

DZEF_fnc_interruptableAction = {
    private["_dis","_sfx","_isLoopDone","_isAnimationStarted","_isAnimationCompleted","_animationState","_isAnimationActive","_exitWith"];

    _dis=10;
    _sfx = "repair";
    [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
    [player,_dis,true,(getPosATL player)] spawn player_alertZombies;

    player playActionNow "Medic";
    r_interrupt             = false;
    _isLoopDone             = false;
    _isAnimationStarted     = false;
    _isAnimationCompleted   = false;
    _animationState         = animationState player;
    _isAnimationActive      = false;
    _exitWith               = "nil";

    while {!_isLoopDone} do {
        _animationState = animationState player;
        _isAnimationActive = ["medic",_animationState] call fnc_inString;
        if (_isAnimationActive) then {
            _isAnimationStarted = true;
        };
        if (_isAnimationStarted and !_isAnimationActive) then {
            _isLoopDone = true;
            _isAnimationCompleted = true;
        };
        {
            if(call compile (_x select 0)) exitWith {
                _exitWith = _x select 1;
            };
        } forEach _this;
        if (_exitWith != "nil") then {
            _isLoopDone = true;
            player switchMove "";
            player playActionNow "stop";
        };
        sleep 0.3;
    };
    _exitWith
};

DZEF_fnc_can_do = {
    private["_onLadder"];
    _onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
    (!r_drag_sqf and !r_player_unconscious and !_onLadder and ((vehicle player) == player))
};

CBA_fnc_sortNestedArray = {
    private "_sort";
    _sort =
    {
    private ["_h","_i","_j","_a","_lo","_hi","_x","_id"];

    _a  = _this select 0;
    _id = _this select 1;
    _lo = _this select 2;
    _hi = _this select 3;

    _h = nil;
    _i = _lo;
    _j = _hi;
    if (count _a == 0) exitWith {};
    _x = (_a select ((_lo+_hi)/2)) select _id;

    while {isnil "_h" || _i <= _j} do
    {
    while {(_a select _i) select _id < _x} do {_i=_i+1};
    while {(_a select _j) select _id > _x} do {_j=_j-1};

    if (_i <=_j) then
    {
    _h = _a select _i;
    _a set [_i, _a select _j];
    _a set [_j, _h];

    _i=_i+1;
    _j=_j-1;
    };
    };

    if (_lo<_j) then {[_a, _id, _lo, _j] call _sort};
    if (_i<_hi) then {[_a, _id, _i, _hi] call _sort};
    };

    [_this select 0, _this select 1, 0, 0 max ((count (_this select 0))-1)] call _sort;

    _this select 0
};