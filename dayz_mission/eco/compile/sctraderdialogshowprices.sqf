private ["_index", "_item", "_descriptionShort", "_image"];
_index = _this select 0;
if (_index < 0) exitWith {};
_item = SCTraderItemList select _index;
diag_log format ["sctradershowprices item 0: %1 1: %2 2: %3 3: %4 4: %5", (_item select 0), (_item select 1), (_item select 2), (_item select 3), (_item select 4)];
ctrlSetText [SCTraderDialogBuyPrice, format["%1 %2", [_item select 2] call BIS_fnc_numberText, EpochCurrency]];
ctrlSetText [SCTraderDialogSellPrice, format["%1 %2", [_item select 3] call BIS_fnc_numberText, EpochCurrency]];
if (VASP_VehiclePreview) then {
		if (!isNil "VehiclePreviewHotkey") then {
			VehiclePreviewList = nil;
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", VehiclePreviewHotkey];
			VehiclePreviewHotkey = nil;
		};
		if ((_item select 4) == "any_vehicle") then {
			VehiclePreviewList = _item;
			VehiclePreviewHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 0x3F) then {[VehiclePreviewList,LastTraderSelectCategory,LastTraderSelectItem] spawn ON_fnc_VehiclePreview;};"];

			hint parseText format ["
				<t size='1.3'font='Bitstream'align='center'color='#00FF00'>! PREVIEW !</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>For preview of</t><br/>
				<t></t><br/>
				<t size='1.2'font='Bitstream'align='center'color='#0000FF'>%1</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>Press F5 now</t><br/>",
				(_item select 1)
			];

			[] spawn {
				waitUntil {sleep 0.1;!dialog};
				(findDisplay 46) displayRemoveEventHandler ["KeyDown", VehiclePreviewHotkey];
				VehiclePreviewHotkey = nil;
			};
		};
	};
	if (VASP_SkinPreview) then {
		if (!isNil "SkinPreviewHotkey") then {
			SkinPreviewList = nil;
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", SkinPreviewHotkey];
			SkinPreviewHotkey = nil;
		};
		if ((_item select 4) == "any_items" && (_item select 0) in AllAllowedSkins) then {
			SkinPreviewList = _item;
			SkinPreviewHotkey = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 0x3F) then {[SkinPreviewList,LastTraderSelectCategory,LastTraderSelectItem] spawn ON_fnc_SkinPreview;};"];

			hint parseText format ["
				<t size='1.3'font='Bitstream'align='center'color='#00FF00'>! PREVIEW !</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>For preview of</t><br/>
				<t></t><br/>
				<t size='1.2'font='Bitstream'align='center'color='#0000FF'>%1</t><br/>
				<t></t><br/>
				<t size='1'font='Bitstream'align='center'color='#FFFFFF'>Press F5 now</t><br/>",
				(_item select 1)
			];

			[] spawn {
				waitUntil {sleep 0.1;!dialog};
				(findDisplay 46) displayRemoveEventHandler ["KeyDown", SkinPreviewHotkey];
			};
		};
	};