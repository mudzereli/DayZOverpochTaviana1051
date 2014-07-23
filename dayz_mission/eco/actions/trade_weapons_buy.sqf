private ["_part_out","_part_in","_qty_out","_qty_in","_qty","_buy_o_sell","_textPartIn","_textPartOut","_needed","_started","_finished","_animState","_isMedic","_total_parts_out","_abort","_removed","_tradeCounter","_next_highest_bar","_third_highest_bar","_next_highest_conv","_third_highest_conv","_third_parts_out_raw","_third_parts_out","_remainder","_next_parts_out_raw","_next_parts_out","_activatingPlayer","_traderID","_total_trades"];

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

_removed = 0;
_tradeCounter = 0;

_player_wealth = _activatingPlayer getVariable ["wealth",0];
if (_player_wealth < _price) exitWith {
	_needed =  _price - _player_wealth;
	cutText [format[("You need another %1 %2"),_needed,EpochCurrency] , "PLAIN DOWN"];
	call _finish_trade;
};

// perform number of total trades

// cutText ["Starting trade, stand still to complete.", "PLAIN DOWN"];
cutText ["Starting trade, stand still to complete trade." , "PLAIN DOWN"];

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

if (_finished) then {
	_player_wealth = _activatingPlayer getVariable ["wealth",0];
	if (_player_wealth >= _price) then {
		/*PVDZE_obj_Trade = [_activatingPlayer,_traderID,0];
		publicVariableServer  "PVDZE_obj_Trade";
		waitUntil {!isNil "dayzTradeResult"};
		if(dayzTradeResult == "PASS") then {*/
			_activatingPlayer setVariable["wealth",(_player_wealth - _price),true];
			player addWeapon _name;
			cutText [format[("Traded %1 %2 for %3"),_price,EpochCurrency,_textPart], "PLAIN DOWN"];
			PVDZE_plr_Save = [_activatingPlayer,(magazines _activatingPlayer),true,true] ;
publicVariableServer "PVDZE_plr_Save";
		//} else {
		//	cutText [format[("Insufficient Stock %1"),_textPart] , "PLAIN DOWN"];
		//};
	} else {
		_needed =  _price - _player_wealth;
		cutText [format[("You need another %1 %2"),_needed,EpochCurrency] , "PLAIN DOWN"];
	};
};
sleep 1;

call _finish_trade;