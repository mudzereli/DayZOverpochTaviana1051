private["_isPackingLocked","_lastPackTime","_exitWith","_deployable","_cursorTarget"];

// set up all these variables
_exitWith = "nil";
_deployable = (_this select 3) select 0;
_cursorTarget = (_this select 3) select 1;
_lastPackTime = _cursorTarget getVariable["lastPackTime",diag_tickTime - 11];
_isPackingLocked = diag_tickTime - _lastPackTime < 10;

// check these conditions to make sure it's okay to start packing, if it's not, we'll get a message back
{
    if(_x select 0) exitWith {
        _exitWith = (_x select 1);
    };
} forEach [
    [(getPlayerUID player) in DZE_DEPLOYABLE_ADMINS,                   "admin"],
    [!(call DZEF_fnc_can_do),                                   format["You can't pack your %1 right now.",(_deployable call getDeployableDisplay)]],
    [(player getVariable["combattimeout", 0]) >= time,          format["Can't pack a %1 while in combat!",(_deployable call getDeployableDisplay)]],
    [(damage cursorTarget > (_deployable call getDamageLimit)), format["The %1 must be under %2 percent damaged to pack!",(_deployable call getDeployableDisplay),(_deployable call getDamageLimit) * 100]],      
    [_isPackingLocked,                                          format["Someone just tried to pack that %1! Try again in a few seconds.",(_deployable call getDeployableDisplay)]],
    [DZE_PACKING,                                                      "You are already packing something!"],
    [DZE_DEPLOYING,                                                    "You are already building something!"]
];

// if we got an error message, show it and leave the script
if(_exitWith != "nil" && _exitWith != "admin") exitWith {
    taskHint [_exitWith, DZE_COLOR_DANGER, "taskFailed"];
};

// now we're packing it, also make the whole server knows we're packing it, so nobody else can
_cursorTarget setVariable["lastPackTime",diag_tickTime,true];
DZE_PACKING = true;

// do the crafting animation until we either finish it or one of these conditions is broken
_exitWith = [
    ["(getPlayerUID player) in DZE_DEPLOYABLE_ADMINS",          "admin"],
    ["r_interrupt",                                      format["Packing %1 interrupted!",(_deployable call getDeployableDisplay)]],
    ["(player getVariable['combattimeout', 0]) >= time", format["Can't pack a %1 while in combat!",(_deployable call getDeployableDisplay)]]
] call fnc_bike_crafting_animation;

// if we got an error message, show it and leave the script
if(_exitWith != "nil" && _exitWith != "admin") exitWith {
    DZE_PACKING = false;
    taskHint [_exitWith, DZE_COLOR_DANGER, "taskFailed"];
};

// give the stuff back and delete the vehicle
{
    if(isClass(configFile >> "CfgWeapons" >> _x)) then {
        player addWeapon _x;
    };
    if(isClass(configFile >> "CfgMagazines" >> _x)) then {
        player addMagazine _x;
    };
} forEach (_deployable call getDeployableParts);

if(_deployable call getPermanent) then {
    PVDZE_obj_Delete = [_cursorTarget getVariable["ObjectID","0"],_cursorTarget getVariable["ObjectUID","0"],player];
    publicVariableServer "PVDZE_obj_Delete";
};
deleteVehicle _cursorTarget;
hideObject _cursorTarget;
player removeAction (_deployable call getActionId);
[_deployable,-1] call setActionId;
DZE_PACKING = false;

// congrats!
taskHint [format["You packed %1 back into your %2.",(_deployable call getDeployableDisplay),(_deployable call getDeployableKitDisplay)], DZE_COLOR_PRIMARY, "taskDone"];