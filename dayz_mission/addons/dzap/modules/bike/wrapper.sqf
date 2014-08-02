/* this sqf file is used to manipulate the deployable array to work more like a class than an array */

/* this gets the item that makes the deployable */
getDeployableKitClass = {
    (DZE_DEPLOYABLES select _this) select 0
};

/* this gets the distance of the deployable */
getDeployableDistanceOffset = {
    (DZE_DEPLOYABLES select _this) select 1
};

/* this gets the distance a player must be to pack the deployable back up */
getDeployablePackDistance = {
    (DZE_DEPLOYABLES select _this) select 2
};

/* if the damage is higher than this, it can't be packed again */
getDamageLimit = {
    (DZE_DEPLOYABLES select _this) select 3
};

/* should players be allowed to pack deployables placed by others? */
getDeployablePackOthers = {
    (DZE_DEPLOYABLES select _this) select 4
};

/* checks if cargo should be cleared for this item */
getClearCargo = {
    (DZE_DEPLOYABLES select _this) select 5
};

/* should the vehicle be saved permanently to the database */
getPermanent = {
    (DZE_DEPLOYABLES select _this) select 6
};

/* this gets the class of the deployable */
getDeployableClass = {
    (DZE_DEPLOYABLES select _this) select 7
};

getDeployableNeedNearBy = {
    (DZE_DEPLOYABLES select _this) select 8
};

/* the parts required to make this item */
getDeployableParts = {
    (DZE_DEPLOYABLES select _this) select 9
};

/* does the deployable require a plot to build ? */
getDeployableRequirePlot = {
    (DZE_DEPLOYABLES select _this) select 10
};

/* does the object have simulation enabled? */
getDeployableSimulation = {
    (DZE_DEPLOYABLES select _this) select 11
};

/* can the object be built on a road? */
getDeployableBuildOnRoad = {
    (DZE_DEPLOYABLES select _this) select 12
};

/* should players be allowed to pack deployables at all? */
getDeployablePackAny = {
    ((_this call getDamageLimit) >= 0) || (!(isNull player) && {(getPlayerUID player) in DZE_DEPLOYABLE_ADMINS});   
};

/* this gets what type of item the kit is*/
getDeployableKitType = {
    private["_return"];
    if(isClass(configFile >> "CfgWeapons" >> (_this call getDeployableKitClass))) then {
        _return = "CfgWeapons";
    } else {
        _return = "CfgMagazines";
    };
    _return
};

/* this is a wrapper function for getting the value of the scroll action */
getActionId = {
  call compile format["
    if (isNil 'DZE_ACTION_DEPLOYABLE_PACK_%1') then {
        DZE_ACTION_DEPLOYABLE_PACK_%1 = -1;
    };
    DZE_ACTION_DEPLOYABLE_PACK_%1
  ",_this];  
};

/* this is a wrapper function for setting the value of the scroll action */
setActionId = {
  call compile format["DZE_ACTION_DEPLOYABLE_PACK_%1 = %2;",_this select 0,_this select 1];  
};

/* this gets the display name of the kit or falls back to class name if unsuccessful */
getDeployableKitDisplay = {
    private["_display"];
    //diag_log text format["BIKE: trying to get display of %1",_this call getDeployableKitClass];
    _display = getText (configFile >> (_this call getDeployableKitType) >> (_this call getDeployableKitClass) >> "displayName");
    //diag_log text format["BIKE: post config lookup: display = %1",_display];
    if((isNil "_display")||_display == "") then {
        _display = (_this call getDeployableKitClass);
    };
    //diag_log text format["BIKE: post patch check: display = %1",_display];
    _display
};

/* this gets the display name of the deployable or falls back to class name if unsuccessful */
getDeployableDisplay = {
    private["_display","_class"];
    _class = (_this call getDeployableClass);
    //diag_log text format["BIKE: trying to get display of %1",_this call getDeployableClass];
    _display = getText (configFile >> "CfgVehicles" >> _class >> "displayName");
    //diag_log text format["BIKE: post config lookup: display = %1",_display];
    if((isNil "_display")||_display == "") then {
        _display = _class;
    };
    {
        if(_class == (_x select 0)) then {
            _display = (_x select 1);
        };
    } forEach DZE_DEPLOYABLE_NAME_MAP;
    //diag_log text format["BIKE: post patch check: display = %1",_display];
    _display
};

/* looks up the index of a deployable based on the class */
getDeployableIndex = {
    private["_return"];
    _return = -1;
    {
        if(_this == (_forEachIndex call getDeployableClass)) then {
            _return = _forEachIndex;
        }
    } forEach DZE_DEPLOYABLES;
    _return
};

/* check if player has required parts to build the item */
/* [player,_partIndex] call getHasDeployableParts; */
getHasDeployableParts = {
    private["_player","_weapons","_parts","_item","_params","_index","_part","_return","_inventory"];
    _params    = _this;
    _player    = _params select 0;
    _index     = _params select 1;
    _parts     = _index call getDeployableParts;
    _inventory = (weapons _player) + (magazines _player);
    _return    = true;
    {
        _part = _x;
        if(!(_part in _inventory)) exitWith {_return = false;};
        {
            _item = _x;
            if(_item == _part) exitWith {_inventory set [_forEachIndex,"nil"];};
        } forEach _inventory;
    } forEach _parts;
    _return
};

/* remove this item's parts from the players inventory */
/* [player,_partIndex] call removeDeployableParts; */
removeDeployableParts = {
    private["_player","_params","_index","_parts","_part"];
    _params = _this;
    _player = _params select 0;
    _index  = _params select 1;
    _parts  = _index call getDeployableParts;
    {
        _part = _x;
        _player removeWeapon _part;
        _player removeMagazine _part;
    } forEach _parts;
};