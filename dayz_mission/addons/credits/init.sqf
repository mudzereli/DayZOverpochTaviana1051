[] spawn { 
    if(isServer) exitWith {};
    private["_cat","_info","_color","_text","_time"];
    _time = 6; //how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role
    //NOTE: Above value is not in seconds. It is percentage. Default: 6

    // ==== SCRIPT START ====
    waitUntil {!isNil "dayz_animalCheck"}; //remove this line completely to make it work in ArmA 3. Yes you read that correctly.
    sleep 10; //Wait in seconds before the credits start after player IS ingame
     
    DZE_SCROLLING_CREDITS = [
        ["Welcome to",["Tac Ops Taviana Overpoch"],"#33b5e5"],
        ["Admins",["Debo", "Triad", "Lucavi"],"#ff4444"],
        ["Moderators",["Red","Dirty Old Man","webber","Taylor Swift"],"#ffbb33"],
        ["Server Mods",["Fast Trading/Custom Traders", "Deployable Bike", "Self Bloodbag", "Missions/Supply Drops", "Tow/Lift", "Take Clothes", "Service Points", "Suicide", "Safe Zones", "and more!"],"#33b5e5"],
        ["Website",["tacticaloperationsunit.enjin.com"],"#33b5e5"],
        ["Special Thanks To",["all our donators"],"#33b5e5"],
        ["Warning",["Changing clothes can cause strange character desync/glitches. This is a bug with Epoch 1.0.5.1 , not the server. We are looking into a fix.","Bases must be maintained every 14 days (free).","Vehicles parked in trader cities are unlocked at server restarts","Tier 2 bases (cinder) are indestructible."],"#ff4444"]
    ];
    {
        sleep 2;
        _cat   = _x select 0;
        _info  = _x select 1;
        _color = _x select 2;
        _text  = format ["<t size='0.50' color='%2' align='right'>%1<br /></t>", _cat, _color];
        _text  = _text + "<t size='0.70' color='#ffffff' align='right'>";
        {_text = _text + format ["%1<br />", _x]} forEach _info;
        _text  = _text + "</t>";
        _time  = _time + (((count _info) - 1) * 0.5);
        [
            _text,
            [safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
            [safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
            _time,
            0.5
        ] spawn BIS_fnc_dynamicText;
        sleep (_time);
    } forEach DZE_SCROLLING_CREDITS;
};