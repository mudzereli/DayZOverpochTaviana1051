if (isServer) exitWith {
    fnc_wmod_load_inventory = {
        DZE_WMOD_LOAD_INVENTORY = [];
        call compile format["if(!(isNil 'DZE_WMOD_INV_%1')) then { DZE_WMOD_LOAD_INVENTORY = DZE_WMOD_INV_%1; };",getPlayerUID _this];
        (owner _this) publicVariableClient "DZE_WMOD_LOAD_INVENTORY";
    };

    fnc_wmod_save_inventory = {
        call compile format["DZE_WMOD_INV_%1 = %2;",getPlayerUID _this,str (_this getVariable["WeaponModInventory",[]])];
    };

    "DZE_WMOD_INVENTORY" addPublicVariableEventHandler {
        private["_params","_player","_load"];
        _params = _this select 1;
        _player = _params select 0;
        _load   = _params select 1;
        if (_load) then {
            _player call fnc_wmod_load_inventory;
        } else {
            _player call fnc_wmod_save_inventory;
        };
    };
};

fnc_wmod_combineWeaponMods = {
    private["_ind","_mod","_rec"];
    {
        _ind = _forEachIndex;
        _rec = _x;
        _mod = _rec select 0;
        {
            if(_mod in (_x select 1)) then {
                _rec set[0,_x select 0];
            };
        } forEach DZE_WEAPON_MOD_COMBINE;
    } forEach DZE_WEAPON_MODS;
};

fnc_wmod_loadClickActions = {
    private["_mod","_base","_upgrade"];
    {
        _mod     = _x select 0;
        _base    = _x select 1;
        _upgrade = _x select 2;
        DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,[_base,   format["Add %1",   _mod],format["['%1','%2','%3',true]  spawn fnc_wmod_modifyWeapon;",_mod,_base,_upgrade],"true"]];
        DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,[_upgrade,format["Remove %1",_mod],format["['%1','%2','%3',false] spawn fnc_wmod_modifyWeapon;",_mod,_upgrade,_base],"true"]];
    } forEach DZE_WEAPON_MODS;
    DZE_WEAPON_MOD_INVENTORY_SHOW = false;
    {
        DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,[_x,"Show Weapon Mods","call fnc_wmod_toggleWeaponModInventory;","!DZE_WEAPON_MOD_INVENTORY_SHOW"]];
        DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,[_x,"Hide Weapon Mods","call fnc_wmod_toggleWeaponModInventory;","DZE_WEAPON_MOD_INVENTORY_SHOW"]];
    } forEach (DZE_WEAPON_MOD_INV_CHECK_ITEMS + (call fnc_wmod_getBackpackClasses));
};

fnc_wmod_loadPlayerInventory = {
    waitUntil {!(isNull player);};
    DZE_WMOD_INVENTORY = [player,true];
    publicVariableServer "DZE_WMOD_INVENTORY";  
};

fnc_wmod_modifyWeapon = {
    private["_mod","_old","_new","_upg","_selected","_message","_return"];
    _mod = _this select 0;
    _old = _this select 1;
    _new = _this select 2;
    _upg = _this select 3;

    if(!DZE_WEAPON_MOD_INVENTORY_SHOW && DZE_WEAPON_MOD_USE_HINT_INVENTORY) then { call fnc_wmod_openWeaponModInventory; };
    
    if(DZE_WEAPON_MOD_BUSY) exitWith {
        cutText["You are already modifying or just modified a weapon! Wait a few seconds and try again.","PLAIN DOWN"];
    };

    DZE_WEAPON_MOD_BUSY = true;

    call DZEF_fnc_closeGearDisplay;

    _return = ([_mod,_upg,_old] call fnc_wmod_performAction);
    if (_return == "nil") then {
        _selected = ((currentWeapon player) == _old);
        player removeWeapon _old;
        player addWeapon _new;

        if (_upg) then {
            _mod call fnc_wmod_remWeaponModInventory;
            _message = "Added %1 to %2!";
        } else {
            _mod call fnc_wmod_addWeaponModInventory;
            _message = "Removed %1 from %2!";
        };

        if(_selected) then {
            [player,_new] call DZEF_fnc_selectProperMuzzle;
        };

        sleep 2;

        call DZEF_fnc_closeGearDisplay;
        
        cutText[format[_message,_mod,getText(configFile >> "CfgWeapons" >> _old >> "displayName")],"PLAIN DOWN"];
        if(!_upg) then {systemChat "WARNING: Unused weapon mods do not save after server restart!";};
        if(!DZE_WEAPON_MOD_INVENTORY_SHOW) then { call fnc_wmod_openWeaponModInventory; };
        
        DZE_WEAPON_MOD_BUSY = false;
    } else {
        cutText[_return,"PLAIN DOWN"];
    };

    DZE_WEAPON_MOD_BUSY = false;
};

fnc_wmod_performAction = {
    private["_dis","_sfx","_done","_doing","_started","_return","_mod","_upg"];
    _mod = _this select 0;
    _upg = _this select 1;
    _old = _this select 2;
    
    _done       = false;
    _return     = "nil";

    if((_upg && !(_mod call fnc_wmod_hasWeaponModInventory))) then {
        _done   = true;
        _return = "You do not have the proper weapon attachment!";
    };

    if(!_done) then {
        _dis = 20;
        _sfx = "repair";
        [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
        [player,_dis,true,(getPosATL player)] spawn player_alertZombies;

        r_interrupt = false;
        _started    = false;
        player playActionNow "Medic";

        while{!_done} do {
            _doing = ["medic",animationState player] call fnc_inString;
            if(_doing) then {
                _started = true;
            };
            if(_started && !_doing) then {
                _done   = true;
                _return = "nil";
            };
            if(r_interrupt) then {
                _done   = true;
                _return = "Weapon modification interrupted!";
            };
            if(!(_old in (weapons player))) then {
                _done   = true;
                _return = "You need the weapon in your inventory to put on the attachment!";
            };
            if((_upg && !(_mod call fnc_wmod_hasWeaponModInventory))) then {
                _done   = true;
                _return = "You do not have the proper weapon attachment!";
            };
            if(_done && _return != "nil") then {
                player switchMove "";
                player playActionNow "stop";
            };
            sleep 0.01;
        };
    };

    _return
};

fnc_wmod_hasWeaponModInventory = {
    ((_this in (call fnc_wmod_getWeaponModInventory)) || ((getPlayerUID player) in DZE_WEAPON_MOD_ADMINS))
};

fnc_wmod_addWeaponModInventory = {
    ((call fnc_wmod_getWeaponModInventory) + [_this]) call fnc_wmod_setWeaponModInventory;
    call fnc_wmod_savePlayerInventory;
};

fnc_wmod_remWeaponModInventory = {
    private["_inventory"];
    _inventory = (call fnc_wmod_getWeaponModInventory);
    {
        if(_x == _this) exitWith {
            _inventory set [_forEachIndex,"nil"];
        };
    } forEach _inventory;
    (_inventory - ["nil"]) call fnc_wmod_setWeaponModInventory;
    call fnc_wmod_savePlayerInventory;
};

fnc_wmod_getWeaponModInventory = {
    DZE_WEAPON_MOD_INVENTORY
};

fnc_wmod_setWeaponModInventory = {
    DZE_WEAPON_MOD_INVENTORY = _this;
};

fnc_wmod_savePlayerInventory = {
    player setVariable["WeaponModInventory",DZE_WEAPON_MOD_INVENTORY,true];
    DZE_WMOD_INVENTORY = [player,false];
    publicVariableServer "DZE_WMOD_INVENTORY";
};

fnc_wmod_getBackpackClasses = {
    private["_backpacks"];
    _backpacks = [];
    {
        if(_x isKindOf "Bag_Base_EP1") then {_backpacks set [count _backpacks,_x];};
    } forEach ((configFile >> "CfgVehicles") call DZEF_fnc_getClasses);
    _backpacks;
};

fnc_wmod_toggleWeaponModInventory = {
    if(DZE_WEAPON_MOD_USE_HINT_INVENTORY) then {
        call DZEF_fnc_closeGearDisplay;
        DZE_WEAPON_MOD_INVENTORY_SHOW = !DZE_WEAPON_MOD_INVENTORY_SHOW;
        if(DZE_WEAPON_MOD_INVENTORY_SHOW) then { call fnc_wmod_openWeaponModInventory; };
    } else {
        call fnc_wmod_openWeaponModInventory;
    };
};

fnc_wmod_openWeaponModInventory = {
    if(DZE_WEAPON_MOD_USE_HINT_INVENTORY) then {
        [] spawn {
            private["_infistarDebug","_startPosition","_hint","_weapon","_upgrades","_color","_mod","_base","_upgrade"];
            _infistarDebug = false;
            if (!(isNil "debugMonitorX")) then {
                _infistarDebug = debugMonitorX;
                debugMonitorX = false;
            };
            DZE_WEAPON_MOD_INVENTORY_SHOW = true;
            _startPosition = position player;
            while {DZE_WEAPON_MOD_INVENTORY_SHOW && (((position player) distance _startPosition) < 5)} do {
                _weapon     = currentWeapon player;
                _upgrades   = [];
                {
                    _mod     = _x select 0;
                    _base    = _x select 1;
                    _upgrade = _x select 2;
                    if((currentWeapon player) == _base && !(_mod in _upgrades)) then {
                        _upgrades set [count _upgrades,_mod];
                    };
                } forEach DZE_WEAPON_MODS;
                _hint = "<t align='left'>";
                _hint = _hint + "<t size='1.2' align='center' color='#33b5e5'>Weapon Mod Inventory</t><br/>";
                if(_weapon != "") then {
                    _hint = _hint + format["<img size='4' align='center' image='%1'/><br/>",getText(configFile >> "CfgWeapons" >> _weapon >> "picture")];
                    _hint = _hint + format["<t size='1.2' align='center'>[<t color='#ffbb33'>%1</t>]</t><br/>",getText(configFile >> "CfgWeapons" >> _weapon >> "displayName")];
                };
                { 
                    switch (true) do {
                        case ((_x select 0) in _upgrades  ): { _color = "#33b5e5"; };
                        default                              { _color = "#ffffff"; };
                    };
                    _hint = _hint + format["<img size='2.5' image='%2'/> <t align='center'><t color='%4'>%1</t>:</t> <t align='right' color='#ffbb33'>%3</t><br/>",_x select 0,_x select 1,_x select 2,_color];
                } forEach (call fnc_wmod_getCountArray);
                _hint = _hint + "<t align='center' color='#ff4444'>Unused weapon mods do NOT save with server restart!</t></t>";
                hintSilent parseText _hint;
                sleep 0.5;
            };
            DZE_WEAPON_MOD_INVENTORY_SHOW = false;
            hintSilent "";
            if(_infistarDebug) then {[] spawn fnc_debugX0;};
        };
    } else {
        systemChat format["Weapon Mod Inventory: %1",(call fnc_wmod_getCountArrayDisplay)];
    };
};

fnc_wmod_getCountArray = {
    private["_return","_keys","_mod","_imgClass","_img"];
    _return = [];
    _keys = [];
    {
        _mod = _x;
        if(!(_mod in _keys)) then {
            _imgClass = "";
            {
                if(_mod == (_x select 0)) then {
                    _imgClass = (_x select 1);
                };
            } forEach DZE_WEAPON_MOD_IMAGE_MAP;
            if(isClass(configFile >> "CfgWeapons" >> _imgClass)) then {
                _img = getText(configFile >> "CfgWeapons" >> _imgClass >> "picture");
            } else {
                _img = getText(configFile >> "CfgMagazines" >> _imgClass >> "picture");
            };
            _keys set [count _keys,_mod];
            _return set [count _return, [_mod,_img,1]];
        } else {
            {
                if((_x select 0) == _mod) then {
                    _return set [_forEachIndex,[_x select 0,_x select 1,(_x select 2) + 1]];
                };
            } forEach _return;
        };
    } forEach DZE_WEAPON_MOD_INVENTORY;
    _return = [_return, 2] call CBA_fnc_sortNestedArray;
    _return
};

fnc_wmod_getCountArrayDisplay = {
    private["_inventory","_count"];
    _count = count (call fnc_wmod_getCountArray);
    if(_count <= 0) then {
        _inventory = "Nothing";
    } else {
        _inventory = "[";
        {
            _inventory = (_inventory + (str (_x select 2)) + "x" + (_x select 0));
            if((_forEachIndex + 1) < _count) then {
                _inventory = _inventory + ", ";
            };
        } forEach (call fnc_wmod_getCountArray);
        _inventory = _inventory + "]";
    };
};