if (isServer) exitWith {};
MetalTradeMenuTID = ["Metals",693];
EpochCurrency     = "Gold Coins";
SmeltingGoldBarsToCoinsRate = 900;
BankMaxDeposit 				= 999999;
s_take_cash 		= -1;
s_smelt_coins 		= -1;
s_smelt_bars 		= -1;
s_smelt_10bars 		= -1;
s_bank_dialog 		= -1;
s_givemoney_dialog	= -1;
s_player_parts_crtl = -1;
bankTraders 		= ["Citizen3","Profiteer2"];

fnc_usec_selfActions	    = compile preprocessFileLineNumbers "overwrites\fn_selfActions.sqf";
player_humanityMorph        = compile preprocessFileLineNumbers "eco\compile\player_humanityMorph.sqf";

BIS_fnc_numberDigits 	    = compile preprocessFileLineNumbers "eco\fnc\numberDigits.sqf";
BIS_fnc_numberText 		    = compile preprocessFileLineNumbers "eco\fnc\numberText.sqf";
BankDialogWithdrawAmount 	= compile preprocessFileLineNumbers "eco\compile\withdrawamount.sqf";
BankDialogDepositAmount  	= compile preprocessFileLineNumbers "eco\compile\depositamount.sqf";
SCTraderDialogLoadItemList 	= compile preprocessFileLineNumbers "eco\compile\loaditems.sqf";
SCTraderDialogShowPrices 	= compile preprocessFileLineNumbers "eco\compile\showprices.sqf";
SCTraderDialogBuy 			= compile preprocessFileLineNumbers "eco\compile\dialogbuy.sqf";
SCTraderDialogSell 			= compile preprocessFileLineNumbers "eco\compile\dialogsell.sqf";
GivePlayerAmount 			= compile preprocessFileLineNumbers "eco\compile\giveplayeramount.sqf";
player_trade				= compile preprocessFileLineNumbers "eco\compile\player_trade.sqf";
BankDialogUpdateAmounts 	= compile preprocessFileLineNumbers "eco\compile\bankDialogUpdateAmounts.sqf";
GivePlayerDialogAmounts 	= compile preprocessFileLineNumbers "eco\compile\givePlayerDialogAmounts.sqf";

player_sideWarnings 			= 0;
BankDialogTransferAmount 		= 13000;
BankDialogPlayerBalance 		= 13001;
BankDialogBankBalance 			= 13002;
BankDialogMaxAmount 			= 13003;
SCTraderDialogCatList 			= 32000;
SCTraderDialogItemList 			= 32001;
SCTraderDialogBuyPrice 			= 32002;
SCTraderDialogSellPrice 		= 32003;
GivePlayerDialogTransferAmount 	= 14000;
GivePlayerDialogPlayerBalance 	= 14001;

[] spawn {
	waitUntil { sleep 1; !isNil ("PVDZE_plr_LoginRecord") };
	
	5 cutRsc ["MTrader","PLAIN"];
	while {true} do {
		private ["_wealth","_bank"];
		
		_wealth = player getVariable ["wealth", 0];
		_wealth = if (typeName _wealth == "STRING") then { parseNumber _wealth } else { _wealth };
		_wealth = [_wealth] call BIS_fnc_numberText;
		_wealth = format["<t size='1' align='right' valign='middle'><img image='eco\images\coin.paa' /> <t color='#ffffff'>%1</t></t>", _wealth];
		((uiNamespace getVariable "MTraderWealth") displayCtrl 1) ctrlSetStructuredText parseText _wealth;
		
		_bank = player getVariable ["bank", 0];
		_bank = if (typeName _bank == "STRING") then { parseNumber _bank } else { _bank };
		_bank = [_bank] call BIS_fnc_numberText;
		_bank = format["<t size='1' align='right' valign='middle'><img image='eco\images\bank.paa' /> <t color='#ffffff'>%1</t></t>", _bank];
		((uiNamespace getVariable "MTraderWealth") displayCtrl 2) ctrlSetStructuredText parseText _bank;
		
		sleep 3;
	};
};