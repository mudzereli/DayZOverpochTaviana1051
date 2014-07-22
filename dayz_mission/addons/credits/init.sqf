
_onScreenTime = 6; //how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role
//NOTE: Above value is not in seconds. It is percentage. Default: 6

// ==== SCRIPT START ====
waitUntil {!isNil "dayz_animalCheck"}; //remove this line completely to make it work in ArmA 3. Yes you read that correctly.
sleep 10; //Wait in seconds before the credits start after player IS ingame
 
_role1 = "Welcome to";
_role1names = ["Your server name"];
_role2 = "Admins";
_role2names = ["Debo", "Triad", "Lucavi", "Taylor Swift"];
_role3 = "Moderators";
_role3names = ["Red","Dirty Old Man","webber"];
_role4 = "Server Mods";
_role4names = ["Fast Trading/Custom Traders", "Self Bloodbag", "Missions/Supply Drops", "Tow/Lift", "Take Clothes", "Service Points", "Suicide", "Safe Zones", "and more!"];
_role5 = "Website";
_role5names = ["tacticaloperationsunit.enjin.com"];
_role6 = "Special Thanks To";
_role6names = ["all our donators"];
 
{
    sleep 2;
    _memberFunction = _x select 0;
    _memberNames    = _x select 1;
    _finalText      = format ["<t size='0.50' color='#33b5e5' align='right'>%1<br /></t>", _memberFunction];
    _finalText      = _finalText + "<t size='0.70' color='#ffffff' align='right'>";
    {_finalText     = _finalText + format ["%1<br />", _x]} forEach _memberNames;
    _finalText      = _finalText + "</t>";
    _onScreenTime + (((count _memberNames) - 1) * 0.5);
    [
        _finalText,
        [safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
        [safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
        _onScreenTime,
        0.5
    ] spawn BIS_fnc_dynamicText;
    sleep (_onScreenTime);
} forEach [
    [_role1, _role1names],
    [_role2, _role2names],
    [_role3, _role3names],
    [_role4, _role4names],
    [_role5, _role5names],
    [_role6, _role6names]
];