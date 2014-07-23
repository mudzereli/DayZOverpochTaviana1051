private ["_amount","_target","_wealth"];
_amount = parseNumber (_this select 0);
_target = GivePlayerTarget;
_wealth = player getVariable["wealth",0];
_twealth = _target getVariable["wealth",0];
if (_amount < 1 or _amount > _wealth) exitWith {
	cutText ["You can not give more than you have.", "PLAIN DOWN"];
};

player setVariable["wealth",_wealth - _amount, true];
_target setVariable["wealth",_twealth + _amount, true];

PVDZE_plr_Save = [player,(magazines player),true,true] ;
publicVariableServer "PVDZE_plr_Save";
PVDZE_plr_Save = [_target,(magazines _target),true,true] ;
publicVariableServer "PVDZE_plr_Save";

cutText [format["You have withdrawn %1 %2.", [_amount] call BIS_fnc_numberText, EpochCurrency], "PLAIN DOWN"];