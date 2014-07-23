private ["_playerNear","_finish_trade","_activatingPlayer","_name","_out","_price","_textPart","_traderID","_started","_finished","_animState","_isMedic","_player_wealth","_needed","_keyColor","_keyNumber","_keySelected","_isKeyOK","_config","_isOk","_dir","_helipad","_location","_veh","_can_sell", "_temp_keys", "_key_colors", "_ownerKeyId"];

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

_obj = nearestObjects [(getPosATL player), [_name], dayz_sellDistance];
_qty = count _obj;

if (_qty < 1) exitWith {
	cutText [format[("No %1 found within 20 meters."),_textPart] , "PLAIN DOWN"];
	call _finish_trade;
};

_obj = nearestObjects [(getPosATL player), [_name], dayz_sellDistance];



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

_qty = count _obj;
if (_qty < 1) exitWith {
	cutText [format[("No %1 found within 20 meters."),_textPart] , "PLAIN DOWN"];
	call _finish_trade;
};

/*PVDZE_obj_Trade = [_activatingPlayer,_traderID,1];
publicVariableServer  "PVDZE_obj_Trade";

//diag_log format["DEBUG Starting to wait for answer: %1", dayzTradeObject];

waitUntil {!isNil "dayzTradeResult"};

//diag_log format["DEBUG Complete Trade: %1", dayzTradeResult];

if(dayzTradeResult != "PASS") exitWith {
	cutText [format[("Insufficient Stock %1"),_textPart] , "PLAIN DOWN"];
	call _finish_trade;
};*/

_obj = _obj select 0;

_temp_keys = [];
// find available keys
_key_colors = ["ItemKeyYellow","ItemKeyBlue","ItemKeyRed","ItemKeyGreen","ItemKeyBlack"];
{
	if (configName(inheritsFrom(configFile >> "CfgWeapons" >> _x)) in _key_colors) then {
		_ownerKeyId = getNumber(configFile >> "CfgWeapons" >> _x >> "keyid");
		_temp_keys set [count _temp_keys,str(_ownerKeyId)];
	};
} forEach _itemsPlayer;

_can_sell = true;
if(locked _obj) then {
	_can_sell = false;
};

if (!_can_sell) exitWith {
	cutText [format[("You need a unlock the vehicle before selling."),_textPart] , "PLAIN DOWN"];
	call _finish_trade;
};

//check to make sure vehicle has no more than 75% average tire damage
_hitpoints = _obj call vehicle_getHitpoints;
_okToSell = true;

// count parts
_tires = 0; 

// total damage 
_tireDmg = 0;

_damage = 0;
{					
	if(["Wheel",_x,false] call fnc_inString) then {		
		_damage = [_obj,_x] call object_getHit;
		_tireDmg = _tireDmg + _damage;
		_tires = _tires + 1;
	};
} forEach _hitpoints;

// find average tire damage
if(_tireDmg > 0 and _tires > 0) then {
	if((_tireDmg / _tires) > 0.75) then {
		_okToSell = false;
	};
};

if(_okToSell) then {
	if(!isNull _obj and alive _obj and (_obj getVariable ['Sarge', 0] == 0)) then {
		// Sell Vehicle
		_activatingPlayer setVariable["wealth",(_player_wealth + _price),true];
		
		PVDZE_plr_Save = [_activatingPlayer,(magazines _activatingPlayer),true,true] ;
		publicVariableServer "PVDZE_plr_Save";

		_objectID 	= _obj getVariable ["ObjectID","0"];
		_objectUID	= _obj getVariable ["ObjectUID","0"];

		//["dayzDeleteObj",[_objectID,_objectUID]] call callRpcProcedure;
		PVDZE_obj_Delete = [_objectID,_objectUID];
		publicVariableServer "PVDZE_obj_Delete";

		deleteVehicle _obj; 

		cutText [format[("Traded %1 for %2 %3"),_textPart,_price,EpochCurrency], "PLAIN DOWN"];
	} else {
		cutText [format[("Cannot sell %1."),_textPart] , "PLAIN DOWN"];
	};
} else {
	cutText [format[("Cannot sell %1, tires are too damaged."),_textPart] , "PLAIN DOWN"];
};
call _finish_trade;