class SCTraderDialog
{
	idd = -1;
	movingenable = 0;
	onLoad = "uiNamespace setVariable ['SCTraderDialog', _this select 0]";
	class Controls {
		class RscTextT_31000: RscTextT
		{
			idc = -1;
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.55016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscTextT_31001: RscTextT
		{
			idc = -1;
			text = "Trader Menu";
			x = 0.283646 * safezoneW + safezoneX;
			y = 0.22492 * safezoneH + safezoneY;
			w = 0.432709 * safezoneW;
			h = 0.055016 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscListbox_31500: RscListbox
		{
			idc = 32000;
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.334952 * safezoneH + safezoneY;
			w = 0.121699 * safezoneW;
			h = 0.178802 * safezoneH;
			onMouseButtonClick = "[(lbCurSel 32000)] spawn SCTraderDialogLoadItemList;";
		};
		class RscTextT_31002: RscTextT
		{
			idc = -1;
			text = "Categories";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscListbox_31501: RscListbox
		{
			idc = 32001;
			x = 0.425628 * safezoneW + safezoneX;
			y = 0.334952 * safezoneH + safezoneY;
			w = 0.283965 * safezoneW;
			h = 0.385112 * safezoneH;
			onMouseButtonClick = "[(lbCurSel 32001)] spawn SCTraderDialogShowPrices;";
		};
		class RscShortcutButton_31700: RscShortcutButton
		{
			idc = -1;
			text = "Buy";
			x = 0.635221 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "[(lbCurSel 32001)] call SCTraderDialogBuy; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscShortcutButton_31701: RscShortcutButton
		{
			idc = -1;
			text = "Sell";
			x = 0.540566 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "[(lbCurSel 32001)] call SCTraderDialogSell; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscTextT_31003: RscTextT
		{
			idc = -1;
			text = "Buy For";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.555016 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscTextT_31004: RscTextT
		{
			idc = -1;
			text = "Sell For";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.623786 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
		class RscTextT_31005: RscTextT
		{
			idc = 32002;
			text = "0 Gold Coins";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.582524 * safezoneH + safezoneY;
			w = 0.114938 * safezoneW;
			h = 0.027508 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscTextT_31006: RscTextT
		{
			idc = 32003;
			text = "0 Gold Coins";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.651294 * safezoneH + safezoneY;
			w = 0.114938 * safezoneW;
			h = 0.027508 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscShortcutButton_31702: RscShortcutButton
		{
			idc = -1;
			text = "Close";
			x = 0.290407 * safezoneW + safezoneX;
			y = 0.720064 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.055016 * safezoneH;
			onButtonClick = "SCTraderItemList = []; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscText_31007: RscText
		{
			idc = -1;
			text = "Items";
			x = 0.432389 * safezoneW + safezoneX;
			y = 0.29369 * safezoneH + safezoneY;
			w = 0.0743718 * safezoneW;
			h = 0.027508 * safezoneH;
		};
	};
};
