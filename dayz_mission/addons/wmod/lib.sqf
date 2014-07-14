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