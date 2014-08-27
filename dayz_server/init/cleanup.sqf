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
    [] spawn {
        private["_lastLootClean","_lastZombieClean","_lastGroupClean","_lastSeagullClean","_countCleaned","_countTotal","_lootPiles","_seagulls","_zombies","_nearby","_pos","_keep","_ammobox"];
        waitUntil {!(isNil "sm_done");};
        diag_log text "CLEANUP: Initialized...";

        _lastLootClean = diag_tickTime;
        _lastZombieClean = diag_tickTime;
        _lastGroupClean = diag_tickTime;
        _lastSeagullClean = diag_tickTime;

        while {true} do {
            //120 - delete loot piles
            if (((diag_tickTime - _lastLootClean) > 120)) then {
                _ammobox = ["USLaunchersBox","RULaunchersBox","USSpecialWeapons_EP1","USVehicleBox","USBasicWeaponsBox","USBasicAmmunitionBox"];
                _lastLootClean = diag_tickTime;
                _lootPiles =  allMissionObjects "ReammoBox";
                _countTotal = count _lootPiles;
                _countCleaned = 0;
                {   
                    if(!(isNull _x)) then {
                        _keep = (_x getVariable ["permaLoot",false]) || (typeOf _x in _ammobox);
                        if (!_keep) then {
                            _nearby = {(isPlayer _x) and (alive _x)} count (_x nearEntities [["CAManBase","AllVehicles"], 130]);
                            if (_nearby==0) then {
                                _x call purge;
                                _countCleaned = _countCleaned + 1;
                            };
                        };
                    };
                    sleep 0.001;
                } forEach _lootPiles;
                diag_log text format["CLEANUP: Deleted %1 Loot Piles out of %2",_countCleaned,_countTotal];
            };

            //180 - delete extra zombies
            if ((diag_tickTime - _lastZombieClean) > 180) then {
                _lastZombieClean = diag_tickTime;
                _zombies = entities "zZombie_Base";
                _countTotal = count _zombies;
                _countCleaned = 0;
                {
                    if(!(isNull _x)) then {
                        if (local _x) then {
                            _x call purge;
                            _countCleaned = _countCleaned + 1;
                        } else {
                            if (!alive _x) then {
                                _pos = getPosATL _x;
                                if (count _pos > 0) then {
                                    _nearby = {(isPlayer _x) and (alive _x)} count (_pos nearEntities [["CAManBase","AllVehicles"], 130]);
                                    if (_nearby==0) then {
                                        _x call purge;
                                        _countCleaned = _countCleaned + 1;
                                    };
                                };
                            };
                        };
                    };
                    sleep 0.001;
                } forEach _zombies;
                diag_log text format["CLEANUP: Deleted %1 Zombies out of %2",_countCleaned,_countTotal];
            };

            //360 - cleanup groups
            if ((diag_tickTime - _lastGroupClean) > 180) then {
                _lastGroupClean = diag_tickTime;
                _countTotal = count allGroups;
                _countCleaned = 0;
                {
                    if(!(isNull _x)) then {
                        if (count units _x == 0) then {
                            deleteGroup _x;
                            _x = nil;
                            _countCleaned = _countCleaned + 1;
                        };
                    };
                    sleep 0.001;
                } forEach allGroups;
                diag_log text format["CLEANUP: Deleted %1 Groups out of %2",_countCleaned,_countTotal];
            };

            //180 - remove seagulls
            if ((diag_tickTime - _lastSeagullClean) > 180) then {
                _lastSeagullClean = diag_tickTime;
                _seagulls = entities "Seagull";
                _countTotal = count _seagulls;
                _countCleaned = 0;
                {
                    _x call purge;
                    _countCleaned = _countCleaned + 1;
                    sleep 0.001;
                } forEach _seagulls;
                diag_log text format["CLEANUP: Deleted %1 Seagulls out of %2",_countCleaned,_countTotal];
            };

            sleep 1;
        };
    };
};