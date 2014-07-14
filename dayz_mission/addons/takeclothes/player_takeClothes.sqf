// By Zabn 2013 @ BalotaBuddies.net
private ["_onLadder","_body","_okSkin","_clothesTaken","_clothesName","_added","_model","_clothes","_bodymodel"];

_body = _this select 3;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText ["You can't perform this action while on a ladder!" , "PLAIN DOWN"]};
if (vehicle player != player) exitWith {cutText ["You may not take clothes while in a vehicle", "PLAIN DOWN"]};

player removeAction S_PLAYER_CLOTHES;
S_PLAYER_CLOTHES = -1;

_bodymodel = (typeOf _body);

{
    _model   = _x select 0;
    _clothes = _x select 1;
    if(_bodymodel == _model) then {
        _okSkin = isClass (configFile >> "CfgMagazines" >> _clothes);
        if(_okSkin) then {
            player playActionNow "Medic";
            sleep 3;
            _clothesTaken = _body getVariable["clothesTaken",false];
            if(!_clothesTaken) then {
                _clothesName = getText (configFile >> "CfgMagazines" >> _clothes >> "displayName");
                _added = [player,_clothes] call BIS_fnc_invAdd;
                if (_added) then {
                    _body setVariable["clothesTaken",true,true];
                    cutText [format["One %1 has been added to your inventory!",_clothesName], "PLAIN DOWN"];
                } else {
                    cutText [format["You didn't have enough room to store a %1 :(",_clothesName], "PLAIN DOWN"];
                };
            } else {
                cutText ["This Skin has already been taken!", "PLAIN DOWN"];
            };
        } else {
            cutText [format["Currently %1 is not supported by the steal skin script.",_clothesName], "PLAIN DOWN"];
        };
        if (true) exitWith {};
    };
} forEach DZ_TAKECLOTHES_MAP;