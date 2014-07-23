ctrlSetText [BankDialogPlayerBalance, format["%1 %2", [(player getVariable ['wealth', 0])] call BIS_fnc_numberText, EpochCurrency]];
ctrlSetText [BankDialogBankBalance, format["%1 %2", [(player getVariable ['bank', 0])] call BIS_fnc_numberText, EpochCurrency]];
ctrlSetText [BankDialogMaxAmount, format["Max: %1 %2", [BankMaxDeposit] call BIS_fnc_numberText, EpochCurrency]];