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

_obj = nearestObjects [(getPosATL player), [_name], dayz_sellDistance];
_qty = count _obj;

if (_qty < 1) exitWith {
	cutText [format[("No %1 found within 20 meters."),_textPart] , "PLAIN DOWN"];
	call _finish_trade;
};

cutText ["Starting trade, stand still to complete trade.", "PLAIN DOWN"];
	 
//### BEGIN MODIFIED CODE: fast trading
private["_newPosition","_finished","_oldPosition"];
if(isNil "_oldPosition") then { _oldPosition = position player;};
_finished = false;
sleep 2;
if (player distance _oldPosition <= 2) then {
	_finished = true;
};
if (!_finished) exitWith { 
	r_autoTrade = false;
	DZE_ActionInProgress = false;
	cutText [(localize "str_epoch_player_106") , "PLAIN DOWN"];
};
//### END MODIFIED CODE: fast trading

_obj = nearestObjects [(getPosATL player), [_name], dayz_sellDistance];
_qty = count _obj;
if (_qty < 1) exitWith {
	cutText [format[("No %1 found within 20 meters."),_textPart] , "PLAIN DOWN"];
	call _finish_trade;
};
/*
PVDZE_obj_Trade = [_activatingPlayer,_traderID,1];
publicVariableServer  "PVDZE_obj_Trade";

//diag_log format["DEBUG Starting to wait for answer: %1", dayzTradeObject];

waitUntil {!isNil "dayzTradeResult"};

//diag_log format["DEBUG Complete Trade: %1", dayzTradeResult];

if(dayzTradeResult != "PASS") exitWith {
	cutText [format[("Insufficient Stock %1"),_textPart] , "PLAIN DOWN"];
	call _finish_trade;
};
*/
_obj = _obj select 0;

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

		_objectID 	= _obj getVariable ["ObjectID","0"];
		_objectUID	= _obj getVariable ["ObjectUID","0"];

		//["dayzDeleteObj",[_objectID,_objectUID]] call callRpcProcedure;
		PVDZE_obj_Delete = [_objectID,_objectUID];
		publicVariableServer "PVDZE_obj_Delete";

		deleteVehicle _obj; 
		PVDZE_plr_Save = [_activatingPlayer,(magazines _activatingPlayer),true,true] ;
publicVariableServer "PVDZE_plr_Save";
		cutText [format[("Traded %1 for %2 %3"),_textPart,_price,EpochCurrency], "PLAIN DOWN"];
	} else {
		cutText [format[("Cannot sell %1."),_textPart] , "PLAIN DOWN"];
	};
} else {
	cutText [format[("Cannot sell %1, tires are too damaged."),_textPart] , "PLAIN DOWN"];
};
call _finish_trade;