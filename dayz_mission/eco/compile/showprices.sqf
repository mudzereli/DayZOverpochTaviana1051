private ["_index", "_item", "_displayName", "_descriptionShort", "_image"];
_index = _this select 0;
if (_index < 0) exitWith {};
while {count SCTraderItemList < 1} do { sleep 1; };
_item = SCTraderItemList select _index;
diag_log format ["sctradershowprices item 0: %1 1: %2 2: %3 3: %4 4: %5", (_item select 0), (_item select 1), (_item select 2), (_item select 3), (_item select 4)];
_displayName =	getText(configFile >> (_item select 5) >> (_item select 0) >> "displayName");
_descriptionShort =	getText(configFile >> (_item select 5) >> (_item select 0) >> "descriptionShort");
_image = getText(configFile >> (_item select 5) >> (_item select 0) >> "picture");

hintSilent parseText format["<img size='7' image='%1'/><br/><t size='1.2' font='TahomaB'>%2</t><br/><t size='1' color='#999999' font='TahomaB'>%3</t>",
	_image,
	_displayName,
	_descriptionShort];

ctrlSetText [SCTraderDialogBuyPrice, format["%1 %2", [_item select 2] call BIS_fnc_numberText, EpochCurrency]];
ctrlSetText [SCTraderDialogSellPrice, format["%1 %2", [_item select 3] call BIS_fnc_numberText, EpochCurrency]];

	