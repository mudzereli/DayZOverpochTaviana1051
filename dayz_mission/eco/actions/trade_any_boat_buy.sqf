private ["_playerNear","_finish_trade","_activatingPlayer","_name","_out","_price","_textPart","_traderID","_started","_finished","_animState","_isMedic","_player_wealth","_needed","_keyColor","_keyNumber","_keySelected","_isKeyOK","_config","_isOk","_dir","_helipad","_location","_veh"];

if(DZE_ActionInProgress) exitWith { cutText ["Trade already in progress." , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

// Test cannot lock while another player is nearby
//_playerNear = {isPlayer _x} count (player nearEntities ["CAManBase", 12]) > 1;
//if(_playerNear) exitWith { DZE_ActionInProgress = false; cutText ["Cannot trade while another player is nearby." , "PLAIN DOWN"];  };


_finish_trade = {
	{player removeAction _x} forEach s_player_parts;s_player_parts = [];
	s_player_parts_crtl = -1;
	DZE_ActionInProgress = false;
	dayzTradeResult = nil;
};

_name = _this select 0;
_textPart = _this select 1;
_price = _this select 2;
_activatingPlayer = player;
_player_wealth = _activatingPlayer getVariable ["wealth",0];

if (_player_wealth < _price) exitWith {
	_needed =  _price - _player_wealth;
	cutText [format["You need another %1 %2",_needed,EpochCurrency] , "PLAIN DOWN"];
	call _finish_trade;
};

cutText ["Starting trade, stand still to complete trade.", "PLAIN DOWN"];
	 
// force animation 
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
	cutText ["Canceled Trade." , "PLAIN DOWN"];
	call _finish_trade;
};


_player_wealth = _activatingPlayer getVariable ["wealth",0];
if (_player_wealth < _price) exitWith {
	_needed =  _price - _player_wealth;
	cutText [format["You need another %1 %2",_needed,EpochCurrency] , "PLAIN DOWN"];
	call _finish_trade;
};

/*PVDZE_obj_Trade = [_activatingPlayer,_traderID,0];
publicVariableServer  "PVDZE_obj_Trade";

//diag_log format["DEBUG Starting to wait for answer: %1", dayzTradeObject];

waitUntil {!isNil "dayzTradeResult"};

//diag_log format["DEBUG Complete Trade: %1", dayzTradeResult];

if(dayzTradeResult != "PASS") exitWith {
	cutText [format[("Insufficient Stock %1"),_textPartOut] , "PLAIN DOWN"];
	call _finish_trade;
};*/

// First select key color
_keyColor = ["Green","Red","Blue","Yellow","Black"] call BIS_fnc_selectRandom;

// then select number from 1 - 2500
_keyNumber = (floor(random 2500)) + 1;

// Combine to key (eg.ItemKeyYellow2494) classname
_keySelected = format[("ItemKey%1%2"),_keyColor,_keyNumber];	

_isKeyOK = 	isClass(configFile >> "CfgWeapons" >> _keySelected);

_config = _keySelected;
_isOk = [player,_config] call BIS_fnc_invAdd;
waitUntil {!isNil "_isOk"};

if (!_isOk or !_isKeyOK) exitwith {
	cutText ["You do not have enough room on your toolbelt.", "PLAIN DOWN"];
	call _finish_trade;
};

_activatingPlayer setVariable["wealth",(_player_wealth - _price),true];


_dir = round(random 360);

_helipad = nearestObjects [player, ["HeliHCivil","HeliHempty"], 100];
if(count _helipad > 0) then {
	_location = (getPosATL (_helipad select 0));
} else {
	_location = [(position player),0,20,1,2,2000,0] call BIS_fnc_findSafePos;
};

//place vehicle spawn marker (local)
_veh = createVehicle ["Sign_arrow_down_large_EP1", _location, [], 0, "CAN_COLLIDE"];

_location = (getPosATL _veh);

PVDZE_veh_Publish2 = [_veh,[_dir,_location],_name,false,_keySelected, player];
publicVariableServer  "PVDZE_veh_Publish2";
PVDZE_plr_Save = [_activatingPlayer,(magazines _activatingPlayer),true,true] ;
publicVariableServer "PVDZE_plr_Save";
player reveal _veh;

cutText [format[("Bought %1 for %2 %3, key added to toolbelt."),_textPart,_price,EpochCurrency], "PLAIN DOWN"];

call _finish_trade;