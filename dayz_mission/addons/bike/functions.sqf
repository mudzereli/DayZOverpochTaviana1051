// this function checks if play is on ladder/passed out/being drug
fnc_can_do = {
    private["_onLadder"];
    _onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
    (!r_drag_sqf and !r_player_unconscious and !_onLadder)
};

// this goes through a crafting animation until the loop is interrupted until interrupted by a set of conditions fed to the function
// it then returns the result of what broke the loop, or "nil" -- yes, string of "nil" -- if not broken
fnc_bike_crafting_animation = {
    private["_dis","_sfx","_isLoopDone","_isAnimationStarted","_isAnimationCompleted","_animationState","_isAnimationActive","_exitWith"];

    _dis=10;
    _sfx = "repair";
    [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
    [player,_dis,true,(getPosATL player)] spawn player_alertZombies;

    player playActionNow "Medic";
    r_interrupt = false;
    _isLoopDone = false;
    _isAnimationStarted = false;
    _isAnimationCompleted = false;
    _animationState = animationState player;
    _isAnimationActive = false;
    _exitWith = "nil";

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

fnc_set_temp_deployable_id = {
    _this setVariable ["DeployedBy",call fnc_temp_deployable_id, true]; 
};

fnc_set_perm_deployable_id = {
    _this setVariable ["CharacterID",call fnc_perm_deployable_id, true]; 
};

fnc_get_perm_deployable_id = {
    private["_return","_parse"];
    _return = _this getVariable ["CharacterID","0"];
    _parse = parseNumber _return;
    if(_parse < 500000) then {
        _return = "nil";
    };
    _return
};

fnc_get_temp_deployable_id = {
    _this getVariable ["DeployedBy","nil"]
};

fnc_perm_deployable_id = {
    private["_calc","_return"];
    _calc = 999999 - (parseNumber dayz_characterID);
    if(_calc < 500000) then {
        _return = "nil";
    } else {
        _return = (str _calc);
    };
   _return
};

fnc_temp_deployable_id = {
    getPlayerUID player  
};