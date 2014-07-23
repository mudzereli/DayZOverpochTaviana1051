private ["_index", "_item", "_data", "_file"];
_index = _this select 0;
if (_index < 0) exitWith {
	cutText ["Trading canceled." , "PLAIN DOWN"];
};
_item = SCTraderItemList select _index;
_data = [_item select 0, _item select 1, _item select 2];
_file = format["eco\actions\trade_%1_buy.sqf", (_item select 4)];
_data execVM _file;
SCTraderItemList = [];