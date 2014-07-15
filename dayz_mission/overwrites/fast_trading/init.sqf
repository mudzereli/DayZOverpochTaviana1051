if (isDedicated) exitWith {};
diag_log text "FAST TRADING: loading...";
call compile preprocessFileLineNumbers "overwrites\fast_trading\config.sqf";
if (!DZE_FAST_TRADING) exitWith {};
if(DZE_ConfigTrader) then {
    diag_log text "FAST TRADING: loading config based trader file...";
    call compile preprocessFileLineNumbers "overwrites\fast_trading\player_traderMenuConfig.sqf";
} else {
    diag_log text "FAST TRADING: loading database trader file...";
    call compile preprocessFileLineNumbers "overwrites\fast_trading\player_traderMenuHive.sqf";
};