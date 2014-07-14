call compile preprocessFileLineNumbers "addons\suicide\config.sqf";
DZE_SUICIDE_VERSION = "1.2.2";
// only run if enabled or server
if (isServer || !DZE_SUICIDE_ADDON_ENABLE) exitWith {};
diag_log text format["SUICIDE v%1: initializing...",DZE_SUICIDE_VERSION];
DZE_CRV_SUICIDE = 3;
// call dependency
call compile preprocessFileLineNumbers "overwrites\click_actions\init.sqf";
if (isNil "DZE_CLICK_ACTIONS_BUILD") exitWith {
    diag_log text "SUICIDE: ERROR -- Click Actions Handler missing!";
};
if (DZE_CLICK_ACTIONS_BUILD != DZE_CRV_SUICIDE) exitWith {
    diag_log text format["SUICIDE: ERROR -- Click Actions Handler loaded build #%1! Required build #%2!",DZE_CLICK_ACTIONS_BUILD,DZE_CRV_SUICIDE];
};
// colors for formatting messages
DZE_COLOR_PRIMARY = [(51/255),(181/255),(229/255),1];
DZE_COLOR_SUCCESS = [(153/255),(204/255),0,1];
DZE_COLOR_DANGER  = [1,(68/255),(68/255),1];
// add all the right-click actions to the guns
{DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,[_x,"Commit Suicide",format["'%1' execVM 'addons\suicide\suicide.sqf';",_x],"true"]];} forEach DZE_SUICIDE_WEAPONS;