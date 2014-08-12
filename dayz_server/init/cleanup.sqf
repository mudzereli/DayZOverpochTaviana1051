purge = {
    if(!isNull(_this)) then {
        _this enableSimulation false;
        _this removeAllMPEventHandlers "mpkilled";
        _this removeAllMPEventHandlers "mphit";
        _this removeAllMPEventHandlers "mprespawn";
        _this removeAllEventHandlers "FiredNear";
        _this removeAllEventHandlers "HandleDamage";
        _this removeAllEventHandlers "Killed";
        _this removeAllEventHandlers "Fired";
        _this removeAllEventHandlers "GetOut";
        _this removeAllEventHandlers "GetIn";
        _this removeAllEventHandlers "Local";
        clearVehicleInit _this;
        deleteVehicle _this;
        deleteGroup (group _this);
        _this = nil;
    };
};

if (isServer) then {
    [] spawn
    {
        waitUntil {!(isNil "sm_done")};
        diag_log text "SCOTTY tm CLEANUP Initialized";

        _lastlootcheck = diag_tickTime;
        _lastZombieClean = diag_tickTime;
        _lastGroupClean = diag_tickTime;
        _lastGullMod = diag_tickTime;

        while {true} do {
            if (((diag_tickTime - _lastlootcheck) > 120)) then
            {
            _lastUpdate = diag_tickTime;
            private ["_delQty","_nearby","_keep","_qty","_lootpiles","_ammobox"];

            _ammobox = ["USLaunchersBox","RULaunchersBox","USSpecialWeapons_EP1","USVehicleBox","USBasicWeaponsBox","USBasicAmmunitionBox"];

            _lootpiles =  allMissionObjects "ReammoBox";
            _delQty = 0;
            {   
                _keep = (_x getVariable ["permaLoot",false]) || (typeOf _x in _ammobox);
                if (!_keep) then {
                            _nearby = {(isPlayer _x) and (alive _x)} count (_x nearEntities [["CAManBase","AllVehicles"], 130]);
                            if (_nearby==0) then {
                                deleteVehicle _x;
                                sleep 0.025;
                                _delQty = _delQty + 1;
                            };
                        };
                sleep 0.001;
                } forEach allMissionObjects "All";
                if (_delQty > 0) then {
                    _qty = count _lootpiles;
                    diag_log (format["SCOTTY tm CLEANUP: Deleted %1 Loot Piles out of %2",_delQty,_qty]);
                };
            };

            if ((diag_tickTime - _lastZombieClean) > 180) then {
                _lastZombieClean = diag_tickTime;
                {
                    if (local _x) then {
                        private ["_pos","_delrndzed","_qty","_randomzeds","_nearby"];

                        _randomzeds = entities "zZombie_Base";
                        _delrndzed = 0;
                            
                        _x call purge;
                        sleep 0.025;
                        _delrndzed = _delrndzed + 1;
                            } else {
                                if (!alive _x) then {
                                    _pos = getPosATL _x;
                                    if (count _pos > 0) then {
                                        _nearby = {(isPlayer _x) and (alive _x)} count (_pos nearEntities [["CAManBase","AllVehicles"], 130]);
                                        if (_nearby==0) then {
                                            _x call purge;
                                            sleep 0.025;
                                            _delrndzed = _delrndzed + 1;
                                        };
                                    };
                                };
                            };
                            sleep 0.001;
                } forEach _randomzeds;
                    if (_delrndzed > 0) then {
                        _qty = count_randomzeds;
                        diag_log (format["SCOTTY tm CLEANUP: Deleted %1 Zombies out of %2",_delrndzed,_qty]);
                    };

                    
            if ((diag_tickTime - _lastGroupClean) > 360) then {
                //Player Groups Cleanup
                    if (count units _x==0) then {
                        deleteGroup _x;
                        _x = nil;
                    }; 
            } forEach allGroups;


            if ((diag_tickTime - _lastGullMod) > 180) then {
                _x call purge;
            } forEach entities "Seagull";
            sleep 5;
            };
        };
    };
};