fnc_map_marker_self_toggle = {
    DZE_SELF_MARKER_TOGGLE = !DZE_SELF_MARKER_TOGGLE;
    [] spawn fnc_map_marker_loop; 
    cutText[format["Self Map Marker: %1",str DZE_SELF_MARKER_TOGGLE],"PLAIN DOWN"];  
};

fnc_map_marker_friendly_toggle = {
    DZE_FRIENDLY_MARKER_TOGGLE = !DZE_FRIENDLY_MARKER_TOGGLE;
    [] spawn fnc_map_marker_loop; 
    cutText[format["Friendly Map Marker: %1",str DZE_FRIENDLY_MARKER_TOGGLE],"PLAIN DOWN"];  
};

fnc_map_marker_vehicle_toggle = {
    DZE_VEHICLE_MARKER_TOGGLE = !DZE_VEHICLE_MARKER_TOGGLE;
    cutText[format["Vehicle Map Marker: %1",str DZE_VEHICLE_MARKER_TOGGLE],"PLAIN DOWN"];  
};

fnc_map_marker_zombie_toggle = {
    DZE_ZOMBIE_MARKER_TOGGLE = !DZE_ZOMBIE_MARKER_TOGGLE;
    cutText[format["Zombie Map Marker: %1",str DZE_ZOMBIE_MARKER_TOGGLE],"PLAIN DOWN"];  
};

fnc_map_marker_loop = {
    if(DZE_MAP_MARKER_LOOP_RUNNING) exitWith {};
    DZE_MAP_MARKER_LOOP_RUNNING = true;
    private["_marker","_targetFriends","_targetCharID","_keys","_keyID","_pos"];
    while {("ItemMap" in (weapons player) || "ItemGPS" in (weapons player)) && {DZE_SELF_MARKER_TOGGLE || DZE_FRIENDLY_MARKER_TOGGLE || DZE_VEHICLE_MARKER_TOGGLE || DZE_ZOMBIE_MARKER_TOGGLE}} do {
        DZE_OLD_MAP_MARKER_UIDS = DZE_MAP_MARKER_UIDS;
        DZE_MAP_MARKER_UIDS = [];
        DZE_MAP_MARKER_LIST = [];
        DZE_MAP_MARKER_TYPE = [];

        if(DZE_SELF_MARKER_TOGGLE) then {
            _pos = getPosATL player;
            DZE_MAP_MARKER_UIDS set [count DZE_MAP_MARKER_UIDS,str _pos];
            DZE_MAP_MARKER_LIST set [count DZE_MAP_MARKER_LIST,_pos];
            DZE_MAP_MARKER_TYPE set [count DZE_MAP_MARKER_TYPE,"Player"];
        };

        if(DZE_FRIENDLY_MARKER_TOGGLE) then {
            {
                if(alive _x) then {
                    _targetCharID = _x getVariable["CharacterID","0"];
                    _targetFriends = _x getVariable["FriendlyTo",[]];
                    if(_targetCharID != "0" && {dayz_characterID in _targetFriends} && {((getPosATL player) distance _x) < DZE_MAP_MARKER_FRIENDLY_RANGE}) then {
                        _pos = getPosATL _x;
                        DZE_MAP_MARKER_UIDS set [count DZE_MAP_MARKER_UIDS,str _pos];
                        DZE_MAP_MARKER_LIST set [count DZE_MAP_MARKER_LIST,_pos];
                        DZE_MAP_MARKER_TYPE set [count DZE_MAP_MARKER_TYPE,"Friendly"];
                    };
                };
            } forEach (allMissionObjects "CAManBase");
        };

        if(DZE_VEHICLE_MARKER_TOGGLE) then {
            if(DZE_MAP_MARKER_VEHICLE_KEY_ONLY) then {
                _keys = [];
                {
                    _keyID = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
                    if(_keyID > 0) then {
                        _keys set [count _keys,_keyID];
                    };
                } forEach (weapons player);
            };
            {
                _veh = _x;
                if(alive _veh) then {
                    if(DZE_MAP_MARKER_VEHICLE_KEY_ONLY) then {
                        _targetCharID = _veh getVariable["CharacterID",1];
                        {
                            if((typeName _targetCharID) == "STRING") then {
                                _targetCharID = parseNumber _targetCharID;
                            };
                            if(_targetCharID == _x && {((getPosATL player) distance _veh) < DZE_MAP_MARKER_VEHICLE_RANGE}) then {
                                _pos = getPosATL _veh;
                                DZE_MAP_MARKER_UIDS set [count DZE_MAP_MARKER_UIDS,str _pos];
                                DZE_MAP_MARKER_LIST set [count DZE_MAP_MARKER_LIST,_pos];
                                DZE_MAP_MARKER_TYPE set [count DZE_MAP_MARKER_TYPE,"Vehicle"];
                            };
                        } forEach _keys;
                    } else {
                        if(((getPosATL player) distance _veh) < DZE_MAP_MARKER_VEHICLE_RANGE) then {
                            _pos = getPosATL _veh;
                            DZE_MAP_MARKER_UIDS set [count DZE_MAP_MARKER_UIDS,str _pos];
                            DZE_MAP_MARKER_LIST set [count DZE_MAP_MARKER_LIST,_pos];
                            DZE_MAP_MARKER_TYPE set [count DZE_MAP_MARKER_TYPE,"Vehicle"];
                        };
                    };
                };
            } forEach ((allMissionObjects "car") + (allMissionObjects "Air") + (allMissionObjects "Ship"));
        };

        if(DZE_ZOMBIE_MARKER_TOGGLE) then {
            {
                if(alive _x && {((getPosATL player) distance _x) < DZE_MAP_MARKER_ZOMBIE_RANGE}) then {
                    _pos = getPosATL _x;
                    DZE_MAP_MARKER_UIDS set [count DZE_MAP_MARKER_UIDS,str _pos];
                    DZE_MAP_MARKER_LIST set [count DZE_MAP_MARKER_LIST,_pos];
                    DZE_MAP_MARKER_TYPE set [count DZE_MAP_MARKER_TYPE,"Zombie"];
                };
            } forEach (allMissionObjects "zZombie_Base");
        };

        {
            if(!(_x in DZE_MAP_MARKER_UIDS)) then {
                deleteMarkerLocal _x;
            };
        } forEach DZE_OLD_MAP_MARKER_UIDS;

        {
            if(!(_x in DZE_OLD_MAP_MARKER_UIDS)) then {
                _marker = createMarkerLocal[_x,DZE_MAP_MARKER_LIST select _foreachindex];
                _marker setMarkerTypeLocal "mil_dot";
                _marker setMarkerShapeLocal "ICON";
                switch (DZE_MAP_MARKER_TYPE select _foreachindex) do {
                    case "Player": {
                        _marker setMarkerTextLocal "ME";
                        _marker setMarkerColorLocal "ColorGreen";
                    };
                    case "Zombie": {
                        _marker setMarkerTextLocal "ZED";
                        _marker setMarkerColorLocal "ColorRed";
                    };
                    case "Vehicle": {
                        _marker setMarkerTextLocal "VEH";
                        _marker setMarkerColorLocal "ColorOrange";
                    };
                    case "Friendly": {
                        _marker setMarkerTextLocal "ALLY";
                        _marker setMarkerColorLocal "ColorBlue";
                    };
                };
            };
        } forEach DZE_MAP_MARKER_UIDS;
        sleep 3;
    };
    {
        deleteMarkerLocal _x;
    } forEach DZE_MAP_MARKER_UIDS;
    DZE_MAP_MARKER_LOOP_RUNNING = false;
};