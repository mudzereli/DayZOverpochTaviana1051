private ["_bars_count","_player_money","_max_bars","_emptySlots","_free_magazine_slots","_needed","_abort","_animState","_started","_finished","_isMedic","_rate"];

player removeAction s_smelt_coins;
s_smelt_coins = -1;
_type = _this select 3;

if (!(_type in ["ItemGoldBar", "ItemGoldBar10oz"])) exitWith {};

if (isNil "SmeltingInProgress") then {
	SmeltingInProgress = false;
};

if (SmeltingInProgress) exitWith {
	cutText ["Smelting in progress...", "PLAIN DOWN"];
};

SmeltingInProgress = true;

_bars_count = 0;

_player_money = player getVariable['wealth',0];

if (_type == "ItemGoldBar10oz") then {
	_rate = SmeltingGoldBarsToCoinsRate * 10;
} else {
	_rate = SmeltingGoldBarsToCoinsRate;
};

_max_bars = floor(_player_money / _rate);

_emptySlots = [player] call BIS_fnc_invSlotsEmpty;
_free_magazine_slots = _emptySlots select 4;

// Check free space
if(_free_magazine_slots < 1) exitWith { 
	cutText ["You have no room in your inventory.", "PLAIN DOWN"];
	SmeltingInProgress = false;
};

// Check player has money
if (_max_bars < 1) exitWith {
	_needed = _rate - _player_wealth;
	cutText [format["You need another %1 %2 to smelt a %3.",_needed,EpochCurrency,_type] , "PLAIN DOWN"];
	SmeltingInProgress = false;
};

if (_max_bars > _free_magazine_slots) then {
	_max_bars = _free_magazine_slots;
};

_abort = false;

for "_x" from 1 to _max_bars do {
	_bars_count = _bars_count + 1;
	if(_max_bars == 1) then { 
		cutText ["Starting smelting, stand still to complete." , "PLAIN DOWN"];
	} else {
		cutText [format["Starting smelting, stand still to smelt %1 of %2 %3.",_bars_count,_max_bars,_type] , "PLAIN DOWN"];
	};

	player playActionNow "Medic";

	r_interrupt = false;
	_animState = animationState player;
	r_doLoop = true;
	_started = false;
	_finished = false;

	while {r_doLoop} do {
		_animState = animationState player;
		_isMedic = ["medic",_animState] call fnc_inString;
		if (_isMedic) then {
			_started = true;
		};
		if (_started and !_isMedic) then {
			r_doLoop = false;
			_finished = true;
		};
		if (r_interrupt) then {
			r_doLoop = false;
		};
		sleep 0.1;
	};
	r_doLoop = false;

	if (!_finished) exitWith { 
		r_interrupt = false;
		if (vehicle player == player) then {
			[objNull, player, rSwitchMove,""] call RE;
			player playActionNow "stop";
		};
		cutText ["Canceled Smelting." , "PLAIN DOWN"];
	};

	if (_finished) then {
		_player_wealth = player getVariable ["wealth",0];
		if (_player_wealth >= _rate) then {
			player setVariable["wealth",(_player_wealth - _rate),true];
			player addMagazine _type;
			_abort = false;
			cutText [format["Smelted %1 %2 into a %3",_rate,EpochCurrency,_type], "PLAIN DOWN"];
		} else {
			_needed =  _rate - _player_wealth;
			cutText [format["You need another %1 %2 to smelt a %3.",_needed,EpochCurrency,_type] , "PLAIN DOWN"];
			_abort = true;
		};
	};
	sleep 1;

	if(_abort) exitWith {};
};
SmeltingInProgress = false;