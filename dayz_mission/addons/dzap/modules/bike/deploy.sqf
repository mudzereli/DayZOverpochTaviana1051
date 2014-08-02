private["_exitWith","_position","_display","_object","_handle"];

_exitWith = "nil";

// close the gear display when player starts to deploy
call DZEF_fnc_closeGearDisplay;

// check these conditions to make sure it's okay to start deploying, if it's not, we'll get a message back
{
    if(_x select 0) exitWith {
        _exitWith = (_x select 1);
    };
} forEach [
    [(getPlayerUID player) in DZE_DEPLOYABLE_ADMINS,          "admin"],
    [!([player,_this] call getHasDeployableParts),     format["You need %1 to build %2",str (_this call getDeployableParts),(_this call getDeployableDisplay)]],
    [!(call DZEF_fnc_can_do),                          format["You can't build a %1 right now.",(_this call getDeployableDisplay)]],
    [(player getVariable["combattimeout", 0]) >= time, format["Can't build a %1 while in combat!",(_this call getDeployableDisplay)]],
    [DZE_DEPLOYING,                                           "You are already building something!"],
    [DZE_PACKING,                                             "You are already packing something!"]
];

// if we got an error message, show it and leave the script
if(_exitWith != "nil" && _exitWith != "admin") exitWith {
    taskHint [_exitWith, DZE_COLOR_DANGER, "taskFailed"];
};

// now we're deploying!
DZE_DEPLOYING = true;
DZE_DEPLOYING_SUCCESSFUL = false;
_handle = (_this call getDeployableClass) spawn player_deploy;
waitUntil{scriptDone _handle;};

DZE_DEPLOYING = false;
// if we got an error message, show it and leave the script
if(!DZE_DEPLOYING_SUCCESSFUL) then {
    taskHint ["Deploying Failed!", DZE_COLOR_DANGER, "taskFailed"];
} else {
    // congrats!
    taskHint [format["You've built a %1!",(_this call getDeployableDisplay)], DZE_COLOR_PRIMARY, "taskDone"];

    sleep 10;

    // notify of despawn if it's not a permanent vehicle
    if (!(_this call getPermanent)) then { 
        cutText [format["WARNING: The %1 is temporary and WILL NOT SAVE after server restart!",(_this call getDeployableDisplay)], "PLAIN DOWN"]; 
    } else {
        cutText [format["The %1 is permanent and will persist through server restarts!",(_this call getDeployableDisplay)], "PLAIN DOWN"]; 
    };
};

