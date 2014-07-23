private["_body", "_body_money", "_player_wealth"];

player removeAction s_take_cash;
s_take_cash = -1;

_body = _this select 3;
_body_money = _body getVariable['wealth',0];

_player_wealth = player getVariable['wealth',0];

_body setVariable['wealth',0,true];

player setVariable['wealth',(_player_wealth + _body_money),true];

cutText [format["You have taken %1 %2.",_body_money,EpochCurrency], "PLAIN DOWN"];