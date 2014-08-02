if(isServer) exitWith {};
diag_log text "CLICK ACTIONS: loading...";
player_selectSlot = compile preprocessFileLineNumbers "overwrites\click_actions\ui_selectSlot.sqf";