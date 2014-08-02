DZE_SUICIDE_VERSION = "1.2.2";
// only run if enabled or server
if (isServer) exitWith {};
diag_log text format["SUICIDE v%1: initializing...",DZE_SUICIDE_VERSION];
// add all the right-click actions to the weapons
{DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,[_x,"Commit Suicide",format["'%1' execVM 'addons\dzap\modules\suicide\suicide.sqf';",_x],"true"]];} forEach (DZE_SUICIDE_GUNS + DZE_SUICIDE_GENERIC);