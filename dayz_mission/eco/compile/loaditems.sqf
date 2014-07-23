private ["_index", "_trader_items", "_item_list"];

lbClear SCTraderDialogItemList;
ctrlSetText [SCTraderDialogBuyPrice, ""];
ctrlSetText [SCTraderDialogSellPrice, ""];

SCTraderItemList = [];
_index = _this select 0;
diag_log format ["LoadItems Index: %1",_index];
SCTraderCurrentCatIndex = _index;

_trader_items = SCTraderCatList select _index;

if (!isClass _trader_items) exitWith {
	cutText [format["Item config not found, report this to an admin. %1", [_index, _trader_items]] , "PLAIN DOWN"];
};
_item_list = [];
for '_i' from 0 to ((count _trader_items)-1) do
{
	private ["_item", "_class", "_type", "_buy", "_sell", "_cfgtype", "_name", "_obj_cfg", "_count", "_bag", "_bagclass", "_index", "_image", "_afile"];
	_item = _trader_items select _i;
	_class = configName _item;
	_type = getText (_item >> "type");
	_buy = getNumber (_item >> "buy");
	_sell = getNumber (_item >> "sell");
	switch (true) do { 
		case (_type == "magazine"): { 
			_cfgtype = "CfgMagazines";
		}; 
		case (_type == "vehicle" || _type == "boat" || _type == "bicycle"): { 
			_cfgtype = "CfgVehicles";
		};  
		case (_type == "backpack"): { 
			_cfgtype = "CfgVehicles";
		}; 
		case (_type == "weapon"): { 
			_cfgtype = "CfgWeapons";
		}; 
	}; 
	_obj_cfg = (configFile >> _cfgtype >> _class);
	_name = getText(_obj_cfg >> "displayName");

	_count = 0;
	if(_cfgtype == "CfgVehicles") then {
		if (_type == "backpack") then {
			_bag = unitBackpack player;
			_bagclass = typeOf _bag;
			if(_class == _bagclass) then {
				_count = 1;
			};
		} else {
			_count = {(typeOf _x) == _class} count (nearestObjects [player, [_class], 20]);
		}
	};

	if(_cfgtype == "CfgMagazines") then {
		_count = {_x == _class} count magazines player;
	};

	if(_cfgtype == "CfgWeapons") then {
		_count = {_x == _class} count weapons player;
	};

	_afile = switch (true) do {
		case (_type == "magazine"): {"items"};
		case (_type == "weapon"): {"weapons"};
		case (_type == "backpack"): {"backpacks"};
		case (_type == "vehicle"): {"any_vehicle"};
		case (_type == "boat"): {"any_boat"};
		case (_type == "bicycle"): {"any_bicycle"};
	};

	_index = lbAdd [SCTraderDialogItemList, format["%1 (%2)", _name, _class]];
	if (_count > 0) then {
		lbSetColor [SCTraderDialogItemList, _index, [0, 1, 0, 1]];
	};

	_image = getText(configFile >> _cfgtype >> _class >> "picture");
	lbSetPicture [SCTraderDialogItemList, _index, _image];
	SCTraderItemList set [count SCTraderItemList, [_class, _name, _buy, _sell, _afile, _cfgtype]];
};