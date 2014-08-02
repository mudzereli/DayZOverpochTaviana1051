private ["_kit","_location","_dir","_classname","_item","_cancel","_reason","_started","_finished","_animState","_isMedic","_dis","_sfx","_hasbuilditem","_tmpbuilt","_text","_offset"];
private ["_isOk","_location1","_location2","_counter","_limit","_proceed","_num_removed","_position","_object","_classnametmp","_lockable","_zheightchanged","_rotate","_combination_1"];
private ["_combination_2","_combination_3","_combination_4","_combination","_combination_1_Display","_combinationDisplay","_zheightdirection","_objHDiff"];
_kit = (DZE_KITS_CONFIG select _this);
diag_log text format["KITS: spawning a safe filled with >> %1",str (_kit select 1)];

DZE_Q = false;
DZE_Z = false;

DZE_Q_alt = false;
DZE_Z_alt = false;

DZE_Q_ctrl = false;
DZE_Z_ctrl = false;

DZE_5 = false;
DZE_4 = false;
DZE_6 = false;

DZE_cancelBuilding = false;

call gear_ui_init;
closeDialog 1;
_kitItems       = _kit select 1;
_item           = "ItemVault";
_cancel         = false;
_reason         = "";
_classname      = "VaultStorage";
_classnametmp   = _classname;
_text           = getText (configFile >> "CfgVehicles" >> _classname >> "displayName");
_lockable       = 4;
_offset         = getArray (configFile >> "CfgVehicles" >> _classname >> "offset");
_location       = [0,0,0];
_isOk           = true;
_location1      = getPosATL player;
_dir            = getDir player;
_offset         = [0,1.5,0];
_hasbuilditem   = _item in magazines player;

if (!_hasbuilditem) exitWith {cutText [format[(localize "str_player_31"),_text,"build"] , "PLAIN DOWN"]; };

_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
_object attachTo [player,_offset];
_position = getPosATL _object;

cutText [(localize "str_epoch_player_45"), "PLAIN DOWN"];

_objHDiff = 0;

while {_isOk} do {

    _zheightchanged = false;
    _zheightdirection = "";
    _rotate = false;

    if (DZE_Q) then {
        DZE_Q = false;
        _zheightdirection = "up";
        _zheightchanged = true;
    };
    if (DZE_Z) then {
        DZE_Z = false;
        _zheightdirection = "down";
        _zheightchanged = true;
    };
    if (DZE_Q_alt) then {
        DZE_Q_alt = false;
        _zheightdirection = "up_alt";
        _zheightchanged = true;
    };
    if (DZE_Z_alt) then {
        DZE_Z_alt = false;
        _zheightdirection = "down_alt";
        _zheightchanged = true;
    };
    if (DZE_Q_ctrl) then {
        DZE_Q_ctrl = false;
        _zheightdirection = "up_ctrl";
        _zheightchanged = true;
    };
    if (DZE_Z_ctrl) then {
        DZE_Z_ctrl = false;
        _zheightdirection = "down_ctrl";
        _zheightchanged = true;
    };
    if (DZE_4) then {
        _rotate = true;
        DZE_4 = false;
        _dir = 180;
    };
    if (DZE_6) then {
        _rotate = true;
        DZE_6 = false;
        _dir = 0;
    };

    if(_rotate) then {
        _object setDir _dir;
        _object setPosATL _position;
    };

    if(_zheightchanged) then {
        detach _object;

        _position = getPosATL _object;

        if(_zheightdirection == "up") then {
            _position set [2,((_position select 2)+0.1)];
            _objHDiff = _objHDiff + 0.1;
        };
        if(_zheightdirection == "down") then {
            _position set [2,((_position select 2)-0.1)];
            _objHDiff = _objHDiff - 0.1;
        };

        if(_zheightdirection == "up_alt") then {
            _position set [2,((_position select 2)+1)];
            _objHDiff = _objHDiff + 1;
        };
        if(_zheightdirection == "down_alt") then {
            _position set [2,((_position select 2)-1)];
            _objHDiff = _objHDiff - 1;
        };

        if(_zheightdirection == "up_ctrl") then {
            _position set [2,((_position select 2)+0.01)];
            _objHDiff = _objHDiff + 0.01;
        };
        if(_zheightdirection == "down_ctrl") then {
            _position set [2,((_position select 2)-0.01)];
            _objHDiff = _objHDiff - 0.01;
        };

        _object setDir (getDir _object);
        
        _object setPosATL _position;

        _object attachTo [player];

    };

    sleep 0.5;

    _location2 = getPosATL player;

    if(DZE_5) exitWith {
        _isOk = false;
        detach _object;
        _dir = getDir _object;
        _position = getPosATL _object;
        deleteVehicle _object;
    };

    if(_location1 distance _location2 > 5) exitWith {
        _isOk = false;
        _cancel = true;
        _reason = "You've moved to far away from where you started building (within 5 meters)";
        detach _object;
        deleteVehicle _object;
    };

    if(abs(_objHDiff) > 5) exitWith {
        _isOk = false;
        _cancel = true;
        _reason = "Cannot move up || down more than 5 meters";
        detach _object;
        deleteVehicle _object;
    };

    if (DZE_cancelBuilding) exitWith {
        _isOk = false;
        _cancel = true;
        _reason = "Cancelled building.";
        detach _object;
        deleteVehicle _object;
    };
};

if(!_cancel) then {

    _classname = _classnametmp;
    _tmpbuilt = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
    _tmpbuilt setdir _dir;
    _location = _position;
    _tmpbuilt setPosATL _location;
    cutText [format[(localize "str_epoch_player_138"),_text], "PLAIN DOWN"];
    _limit = 1;

    _isOk = true;
    _proceed = false;
    _counter = 0;

    while {_isOk} do {

        [10,10] call dayz_HungerThirst;
        player playActionNow "Medic";

        _dis=20;
        _sfx = "repair";
        [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
        [player,_dis,true,(getPosATL player)] spawn player_alertZombies;

        r_interrupt = false;
        r_doLoop = true;
        _started = false;
        _finished = false;

        while {r_doLoop} do {
            _animState = animationState player;
            _isMedic = ["medic",_animState] call fnc_inString;
            if (_isMedic) then {
                _started = true;
            };
            if (_started && !_isMedic) then {
                r_doLoop = false;
                _finished = true;
            };
            if (r_interrupt) then {
                r_doLoop = false;
            };
            if (DZE_cancelBuilding) exitWith {
                r_doLoop = false;
            };
            sleep 0.1;
        };
        r_doLoop = false;


        if(!_finished) exitWith {
            _isOk = false;
            _proceed = false;
        };

        if(_finished) then {
            _counter = _counter + 1;
        };

        cutText [format[(localize "str_epoch_player_139"),_text, _counter,_limit], "PLAIN DOWN"];

        if(_counter == _limit) exitWith {
            _isOk = false;
            _proceed = true;
        };

    };

    if (_proceed) then {
        _num_removed = ([player,_item] call BIS_fnc_invRemove);
        if(_num_removed == 1) then {
            cutText [format[localize "str_build_01",_text], "PLAIN DOWN"];

            _tmpbuilt setVariable ["OEMPos",_location,true];

            _combination_1 = floor(random 10);
            _combination_2 = floor(random 10);
            _combination_3 = floor(random 10);
            _combination_4 = floor(random 10);
            _combination = format["%1%2%3%4",_combination_1,_combination_2,_combination_3,_combination_4];
            dayz_combination = _combination;
            _combinationDisplay = _combination;

            _tmpbuilt setVariable ["CharacterID",_combination,true];

            PVDZE_obj_Publish = [_combination,_tmpbuilt,[_dir,_location],"VaultStorageLocked"];
            publicVariableServer "PVDZE_obj_Publish";

            private["_entry","_amount","_item","_cfg"];
            {
                _cfg = _x;
                {
                    _amount = _x select 0;
                    _item   = _x select 1;
                    _entry  = (configFile >> _cfg >> _item);
                    if (isClass _entry) then {
                        switch(_cfg) do {
                            case "CfgVehicles": {
                                if(_item isKindOf "Bag_Base_EP1") then {
                                    _tmpbuilt addBackpackCargoGlobal [_item,_amount];
                                };
                            };
                            case "CfgWeapons": {
                                _tmpbuilt addWeaponCargoGlobal [_item,_amount];
                            };
                            case "CfgMagazines": {
                                _tmpbuilt addMagazineCargoGlobal [_item,_amount];
                            };
                        };
                    };
                } forEach (_kitItems);
            } forEach ["CfgWeapons","CfgMagazines","CfgVehicles"];
            PVDZE_veh_Update = [_tmpbuilt,"gear"];
            publicVariableServer "PVDZE_veh_update";

            player reveal _tmpbuilt;

            cutText [format[(localize "str_epoch_player_140"),_combinationDisplay,_text], "PLAIN DOWN", 5];
        } else {
            deleteVehicle _tmpbuilt;
            cutText [(localize "str_epoch_player_46") , "PLAIN DOWN"];
        };
    } else {
        r_interrupt = false;
        if (vehicle player == player) then {
            [objNull, player, rSwitchMove,""] call RE;
            player playActionNow "stop";
        };

        deleteVehicle _tmpbuilt;

        cutText [(localize "str_epoch_player_46") , "PLAIN DOWN"];
    };
} else {
    cutText [format[(localize "str_epoch_player_47"),_text,_reason], "PLAIN DOWN"];
};