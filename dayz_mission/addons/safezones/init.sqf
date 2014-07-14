[] spawn {
    /*
       by: http://infiSTAR.de || http://DayzAntiHack.com
       *updated on 25.06.2014
    */
    USE_CANBUILD = true;            // if you don't want to define your own positions
    USE_TraderCity = true;  //      if you don't want to define your own positions (Epoch 1.0.5)
    USE_POSITIONS = false;  // to use own positions and radius
    USE_AI_REMOVER = true; // use this to remove Missionbots (AI) within 100m of a player if the player is in a SafeZone
    USE_AntiSteal = true;   // use this to block opening gear if another player is within 3m!
    USE_SIGNS = false;              // use this to build signs around the SafeZone
    LOG_EnterLeave = true;  // This will log to your .rpt when a player enters or leaves a SafeZone! (only works with infiSTAR.de Admintools / AntiHack)
    /* You can use USE_CANBUILD or/and (works together) the custom positions below (USE_POSITIONS) [position or zone,radius] */
    _infiSZ =
    [
            [[6325.6772,7807.7412],200,true],
            [[4063.4226,11664.19],200,true],
            [[11447.472,11364.504],200,true],
            [[1606.6443,7803.5156],150,true],
            [[12944.227,12766.889],150,true],
            [[5068.6636,9723.4248],100,true]
    ];
    if (isServer) exitWith
    {
            if (USE_SIGNS) then
            {
                    {
                            _center = _x select 0;
                            _radius = _x select 1;
                            _lSign = _x select 2;
                            if (_lSign) then
                            {
                                    for '_i' from 0 to 360 step (270 / _radius)*2 do
                                    {
                                            _location = [(_center select 0) + ((cos _i) * _radius), (_center select 1) + ((sin _i) * _radius),0];
                                            _dir = ((_center select 0) - (_location select 0)) atan2 ((_center select 1) - (_location select 1));
                                            _object = createVehicle ['SignM_FARP_Winchester_EP1', _location, [], 0, 'CAN_COLLIDE'];
                                            _object setDir _dir;
                                            //      _object setVehicleInit 'this setObjectTexture [0, ''Addons\SafeZones\sign.paa''];';
                                    };
                            };
                    } forEach _infiSZ;
            };
    };
    waitUntil { !isNil 'dayz_animalCheck' };
    if (isNil 'inSafezone') then {inSafezone = false;};
    [_infiSZ] spawn {
            _infiSZ = _this select 0;
            _startSafeZone =
            {
                    if (isNil 'outNow') then
                    {
                            _msg = 'You entered a Safe Zone!';
                            hint _msg;
                            taskHint [_msg, [0,1,0,1], 'taskDone'];
                            inNow = nil;
                            outNow = true;
                           
                            if (LOG_EnterLeave) then
                            {
                                    _obj = vehicle player;
                                    _pos = getPosATL _obj;
                                    PVDZE_send = [player,'SafeZoneState',[1]];
                                    publicVariableServer 'PVDZE_send';
                            };
                    };
                    player_fired2 = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_fired.sqf';
                    player_fired = {_this call player_fired2;deleteVehicle (nearestObject [_this select 0,_this select 4]);};
                    player_zombieCheck = {};
                    fnc_usec_damageHandler = {};
                    fnc_usec_unconscious = {};
                    object_monitorGear = {};
                    player removeAllEventHandlers 'handleDamage';
                    player addEventHandler ['handleDamage', {false}];
                    player allowDamage false;
                    _x = vehicle player;
                    if ((_x isKindOf 'LandVehicle') || (_x isKindOf 'Air') || (_x isKindOf 'Ship')) then
                    {
                            _szs = _x getVariable ['inSafeZone',0];
                            if (_szs == 0) then
                            {
                                    _x removeAllEventHandlers 'Fired';
                                    _x addEventHandler ['Fired', {_this call player_fired;}];
                                    _x setVariable ['inSafeZone', 1, true];
                                    _x removeAllEventHandlers 'HandleDamage';
                                    _x addEventHandler ['HandleDamage', {false}];
                                    _x allowDamage false;
                            };
                    };
                   
                    _cwep = currentWeapon player;
                    if (_cwep in ['MAAWS']) then
                    {
                            _swep = '';
                            {
                                    if ((getNumber (configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith
                                    {
                                            _swep = _x;
                                    };
                            } forEach (weapons player);
                            if (_swep == '') then
                            {
                                    player playActionNow 'PutDown';
                                    _iPos = getPosATL player;
                                    _radius = 1;
                                    _removed = ([player,_cwep,1] call BIS_fnc_invRemove);
                                    if (_removed == 1) then
                                    {
                                            _item = createVehicle ['WeaponHolder', _iPos, [], _radius, 'CAN_COLLIDE'];
                                            _item addWeaponCargoGlobal [_cwep,1];
                                    };
                            }
                            else
                            {
                                    player selectweapon _swep;
                            };
                    };
            };
            _endSafeZone =
            {
                    if (isNil 'inNow') then
                    {
                            if (str fnc_usec_damageHandler == '{}') then
                            {
                                    _msg = 'You left the Safe Zone!';
                                    hint _msg;
                                    taskHint [_msg, [1,0,0.1,1], 'taskFailed'];
                            };
                            inNow = true;
                            outNow = nil;
                           
                            if (LOG_EnterLeave) then
                            {
                                    _obj = vehicle player;
                                    _pos = getPosATL _obj;
                                    PVDZE_send = [player,'SafeZoneState',[0]];
                                    publicVariableServer 'PVDZE_send';
                            };
                    };
                    player_fired = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_fired.sqf';
                    player_zombieCheck = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieCheck.sqf';
                    fnc_usec_unconscious = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_unconscious.sqf';
                    object_monitorGear = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\object_monitorGear.sqf';
                   
                    _x = vehicle player;
                    if ((_x isKindOf 'LandVehicle') || (_x isKindOf 'Air') || (_x isKindOf 'Ship')) then
                    {
                            _szs = _x getVariable ['inSafeZone',0];
                            if (_szs == 1) then
                            {
                                    _x setVariable ['inSafeZone', 0, true];
                                    _x removeAllEventHandlers 'HandleDamage';
                                    _x addeventhandler ['HandleDamage',{ _this call vehicle_handleDamage } ];
                                    _x allowDamage true;
                            };
                    };
                    if (isNil 'gmdadmin') then {gmdadmin = 0;};
                    if (gmdadmin == 1) exitWith {};
                    player allowDamage true;
                    fnc_usec_damageHandler = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
                    player removeAllEventHandlers 'HandleDamage';
                    player addeventhandler ['HandleDamage',{_this call fnc_usec_damageHandler;} ];
            };
            while {1 == 1} do
            {
                    _state = false;
                    _obj = vehicle player;
                   
                    if (isNil 'inSafeZone') then { inSafeZone = false; } else { if (typename inSafeZone != 'BOOL') then { inSafeZone = false; }; };
                    if (isNil 'canbuild') then { canbuild = true; } else { if (typename canbuild != 'BOOL') then { canbuild = true; }; };
                    if (isNil 'USE_POSITIONS') then { USE_POSITIONS = false; } else { if (typename USE_POSITIONS != 'BOOL') then { USE_POSITIONS = false; }; };
                    if (isNil 'USE_CANBUILD') then { USE_CANBUILD = true; } else { if (typename USE_CANBUILD != 'BOOL') then { USE_CANBUILD = true; }; };
                    if (isNil 'USE_TraderCity') then { USE_TraderCity = true; } else { if (typename USE_TraderCity != 'BOOL') then { USE_TraderCity = true; }; };
                    if (USE_POSITIONS) then
                    {
                            {
                                    _z = _x select 0;
                                    _r = _x select 1;
                                    if (_obj distance _z < _r) exitWith {_state = true;};
                            } forEach _infiSZ;
                    };
                    if (USE_CANBUILD) then
                    {
                            if (!canbuild) then {_state = true;};
                    };
                    if (USE_TraderCity) then
                    {
                            if (isInTraderCity) then {_state = true;};
                    };
                    if (_state) then
                    {
                            inSafeZone = true;
                            call _startSafeZone;
                            {
                                    if (!isNull _x) then
                                    {
                                            if !(isPlayer _x) then
                                            {
                                                    deletevehicle _x;
                                            };
                                    };
                            } forEach (_obj nearEntities ['zZombie_Base',15]);
                           
                            if (isNil 'USE_AI_REMOVER') then { USE_AI_REMOVER = false; } else { if (typename USE_AI_REMOVER != 'BOOL') then { USE_AI_REMOVER = false; }; };
                            if (USE_AI_REMOVER) then
                            {
                                    {
                                            if ((!isNull group _x) && (getPlayerUID _x == '')) then
                                            {
                                                    deleteVehicle _x;
                                            };
                                    } forEach (player nearEntities ['Man',100]);
                            };
                    }
                    else
                    {
                            inSafeZone = false;
                    };
                    uiSleep 2;
                    if (!inSafeZone) then
                    {
                            call _endSafeZone;
                    };
            };
    };
    if (USE_AntiSteal) then
    {
            [] spawn {
                    while {1 == 1} do
                    {
                            if (inSafezone) then
                            {
                                    _cnt = {isPlayer _x && _x != player} count (player nearEntities [['CAManBase'], 3]);
                                    if ((_cnt > 0) && (!isNull (findDisplay 106))) then
                                    {
                                            (findDisplay 106) closedisplay 0;
                                            closeDialog 0;
                                            _log = format['%1 You are not allowed to open Gear while near another player!',name player];
                                            cutText [_log,'PLAIN'];
                                            hint _log;
                                    };
                            }
                            else
                            {
                                    uiSleep 2;
                            };
                            uiSleep 0.1;
                    };
            };
    };
};