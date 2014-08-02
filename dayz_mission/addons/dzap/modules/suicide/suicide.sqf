private ["_position","_done","_timeLeft","_exitWith","_warning","_display","_weapon"];

// initialize variables
_weapon   = _this;
_exitWith = "nil";
_done     = false;
_position = getPosATL player;
_timeLeft = DZE_SUICIDE_CANCEL_TIME;
_warning  = "You will commit suicide in %1 seconds. Move to cancel!";

// close the gear display when player starts to commit suicide
call DZEF_fnc_closeGearDisplay;

// only do this stuff if we have a suicide timer
if(_timeLeft > 0) then {
    // make sure the player really knows they are about to die
    hint format[_warning,_timeLeft];
    taskHint [format[_warning,_timeLeft], DZE_COLOR_DANGER, "taskNew"];
};

// perform conditional checks while giving the player a chance to cancel
while{!_done} do {
    if(_timeLeft > 0) then {
        cutText [format[_warning,_timeLeft], "PLAIN DOWN"];
        sleep 1;
        _timeLeft = _timeLeft - 1;
    };
    if((player distance _position) > 1) exitWith {
        _exitWith = "Suicide Cancelled!";
    };
    if(!(_weapon in ((weapons player) + (magazines player)))) exitWith {
        _exitWith = "You need the weapon to kill yourself with!";
    };
    if((_weapon in DZE_SUICIDE_GUNS) && DZE_SUICIDE_REQUIRE_BULLET && ((player ammo _weapon) == 0)) exitWith {
        _exitWith = "You are out of ammunition!";
    };
    _done = _timeLeft <= 0;
};


// if we didn't get an exit reason back, time to die!
if (_exitWith == "nil") then {
    _exitWith = "Goodbye!";
    taskHint[_exitWith, DZE_COLOR_SUCCESS, "taskDone"];
    hint _exitWith;
    if (_weapon in DZE_SUICIDE_GUNS) then {
        cutText[_exitWith,"PLAIN DOWN"];
        player selectWeapon _weapon;
        player switchMove "";
        player playActionNow "stop";
        player playMove (["ActsPercMstpSnonWpstDnon_suicide1B","ActsPercMstpSnonWpstDnon_suicide2B"] call BIS_fnc_selectRandom);
        sleep 7.5;
        player fire _weapon;
    } else {
        titleText[_exitWith,"BLACK OUT",2];
        sleep 3;
        [player,"scream",0,false,70] call dayz_zombieSpeak;
        [player,_dis,true,(getPosATL player)] spawn player_alertZombies;
    };
    sleep 1;
    player setDamage 1.5;
} else {
    taskHint[_exitWith, DZE_COLOR_DANGER, "taskFailed"];
    cutText[_exitWith,"PLAIN DOWN"];
};