diag_log ("mem debug mission sc player_trade.sqf Executed");
private ["_trader_type", "_trader_cfg", "_trader_categories", "_humanity", "_low_high", "_humanity_logic", "_player_humanity"];
diag_log format["mem debug mission sc player_trade.sqf A -, %1,", (_this select 3)];
if (DZE_ActionInProgress) exitWith {
	cutText ["Trading already in progress." , "PLAIN DOWN"];
};
_trader_type = (_this select 3);
_trader_cfg = missionConfigFile >> "Traders" >> "Npcs" >> _trader_type;

if (!isClass _trader_cfg) exitWith {
	cutText [format["Trader config not found, report this to an admin. %1", _trader_type] , "PLAIN DOWN"];
};

_trader_categories = getArray (_trader_cfg >> "items");
_humanity = getText (_trader_cfg >> "humanity");

_low_high = "low";
_humanity_logic = false;
_player_humanity = player getVariable['humanity', 0];

if(_humanity == "friendly") then {
	_humanity_logic = (_player_humanity < -5000);
};
if(_humanity == "hostile") then {
	_low_high = "high";
	_humanity_logic = (_player_humanity > -5000);
};
if(_humanity == "hero") then {
	_humanity_logic = (_player_humanity < 5000);
};

if (_humanity_logic) exitWith {
	cutText [(format[localize "STR_EPOCH_ACTIONS_HUMANITY",_low_high]) , "PLAIN DOWN"];
};

createdialog "SCTraderDialog";
lbClear SCTraderDialogCatList;
lbClear SCTraderDialogItemList;
SCTraderCatList = [];

{
	private ["_category_cfg", "_name", "_items", "_index"];
	_category_cfg = (missionConfigFile >> "Traders" >> "Items" >> _x);
	if (isClass _category_cfg) then {
		_name = getText (_category_cfg >> "name");
		_items = (_category_cfg >> "Items");
		_index = lbAdd [SCTraderDialogCatList, _name];
		SCTraderCatList set [count SCTraderCatList, _items];
	} else {
		cutText [format["Item config not found, report this to an admin. %1", _x] , "PLAIN DOWN"];
	};
	true
} count _trader_categories;
