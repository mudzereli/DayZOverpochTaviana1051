if(isServer)then{
    [] spawn {
        sleep 300;
        diag_log "ANTIPARA: Starting loop!";
        _debug = getMarkerpos "respawn_west";
        while {true} do {
            _allParachutes = (entities "ParachuteBase");
            if(count _allParachutes > 0)then{
                {
                    _chute = _x;
                    if(count (crew _chute) < 1 and _chute distance _debug > 250) then{
                        if((typeOf _chute) in ["ParachuteMediumWest","ParachuteMediumWest"] and ((getPosATL _chute) select 2) > 1)then{
                            diag_log format["ANTIPARA: Skipping: '%1' '%2' - (%3) %4",_chute,typeOf _chute,mapGridPosition _chute,getPos _chute];
                        }else{
                            //comment this log out, when it seems to work
                            diag_log format["ANTIPARA: '%1' '%2' - (%3) %4",_chute,typeOf _chute,mapGridPosition _chute,getPos _chute];
                            detach _chute;
                            _chute setPos _debug;
                            _chute setDamage 1;
                            deleteVehicle _chute;
                        };
                    };
                }forEach _allParachutes;
            };
            //more time here, the longer inbetween cleanup cycles but will save server resources
            //less time will clean faster, but might have impact on server performance
            sleep 120;
        };
    };
};