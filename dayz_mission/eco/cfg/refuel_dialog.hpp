/*
$[1.03,[[0,0,1,1],0.03125,0.05],[1000,"",[1,"",["0.323683 * safezoneW + safezoneX","0.265134 * safezoneH + safezoneY","0.352634 * safezoneW","0.469731 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0.7],[-1,-1,-1,-1],""],[]],[1001,"",[1,"Refuel",["0.323683 * safezoneW + safezoneX","0.265134 * safezoneH + safezoneY","0.352634 * safezoneW","0.0469731 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0.7],[-1,-1,-1,-1],""],[]],[1002,"",[1,"Current Fuel:",["0.340213 * safezoneW + safezoneX","0.335594 * safezoneH + safezoneY","0.0606089 * safezoneW","0.0234866 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1003,"",[1,"progress",["0.406332 * safezoneW + safezoneX","0.335594 * safezoneH + safezoneY","0.247946 * safezoneW","0.0234866 * safezoneH"],[-1,-1,-1,-1],[1,1,1,1],[-1,-1,-1,-1],""],[]],[1004,"",[1,"Fuel To Buy (litres)",["0.345712 * safezoneW + safezoneX","0.488249 * safezoneH + safezoneY","0.0936683 * safezoneW","0.0234866 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1700,"",[1,"Buy Fuel",["0.588164 * safezoneW + safezoneX","0.558756 * safezoneH + safezoneY","0.0683244 * safezoneW","0.0521408 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1100,"",[1,"fuel info",["0.345712 * safezoneW + safezoneX","0.370738 * safezoneH + safezoneY","0.308575 * safezoneW","0.10576 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0],[-1,-1,-1,-1],""],[]],[1101,"",[1,"slider",["0.444897 * safezoneW + safezoneX","0.488249 * safezoneH + safezoneY","0.209376 * safezoneW","0.0234866 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1701,"",[1,"Close",["0.345723 * safezoneW + safezoneX","0.664406 * safezoneH + safezoneY","0.0683244 * safezoneW","0.0521408 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]],[1102,"",[1,"cost",["0.345712 * safezoneW + safezoneX","0.523502 * safezoneH + safezoneY","0.306895 * safezoneW","0.0363177 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0],[-1,-1,-1,-1],""],[]],[1103,"",[1,"repair details",["0.344836 * safezoneW + safezoneX","0.610053 * safezoneH + safezoneY","0.225921 * safezoneW","0.0470045 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0],[-1,-1,-1,-1],""],[]],[1702,"",[1,"Repair",["0.588164 * safezoneW + safezoneX","0.60576 * safezoneH + safezoneY","0.0683244 * safezoneW","0.0521408 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],""],[]]]
*/

class RefuelDialog
{
	idd = -1;
	movingenable = 0;
	onLoad = "uiNamespace setVariable ['RefuelDialog', _this select 0]";

	class Controls {
		class RscText_1000: RscTextT
		{
			idc = -1;
			x = 0.323683 * safezoneW + safezoneX;
			y = 0.265134 * safezoneH + safezoneY;
			w = 0.352634 * safezoneW;
			h = 0.469731 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscText_1001: RscTextT
		{
			idc = -1;
			text = "Refuel and Repair";
			x = 0.323683 * safezoneW + safezoneX;
			y = 0.265134 * safezoneH + safezoneY;
			w = 0.352634 * safezoneW;
			h = 0.0469731 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscText_1002: RscTextT
		{
			idc = -1;
			text = "Vehicle Fuel:";
			x = 0.340213 * safezoneW + safezoneX;
			y = 0.335594 * safezoneH + safezoneY;
			w = 0.0606089 * safezoneW;
			h = 0.0234866 * safezoneH;
		};
		class RscProgress_1003: RscProgressF 
		{
			idc = 4600;
			x = 0.406332 * safezoneW + safezoneX;
			y = 0.335594 * safezoneH + safezoneY;
			w = 0.247946 * safezoneW;
			h = 0.0234866 * safezoneH;
			colorBackground[] = {1,1,1,0.5};
			colorText[] = {1,0,0,0.5};
			color[] = {0,1,0,0.5};
		};
		class RscText_1004: RscTextT
		{
			idc = -1;
			text = "Fuel To Buy (litres)";
			x = 0.345712 * safezoneW + safezoneX;
			y = 0.488249 * safezoneH + safezoneY;
			w = 0.0936683 * safezoneW;
			h = 0.0234866 * safezoneH;
		};
		class RscShortcutButton_1700: RscShortcutButton
		{
			idc = -1;
			text = "Buy Fuel";
			x = 0.588164 * safezoneW + safezoneX;
			y = 0.558756 * safezoneH + safezoneY;
			w = 0.0683244 * safezoneW;
			h = 0.0521408 * safezoneH;
			onButtonClick = "call RefuelBuyFuel; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 4601;
			text = "fuel info";
			x = 0.345712 * safezoneW + safezoneX;
			y = 0.370738 * safezoneH + safezoneY;
			w = 0.308575 * safezoneW;
			h = 0.10576 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class RscSliderFuel
		{
			idc = 4602;
			x = 0.444897 * safezoneW + safezoneX;
			y = 0.488249 * safezoneH + safezoneY;
			w = 0.209376 * safezoneW;
			h = 0.0234866 * safezoneH;
			type = CT_SLIDER;
			style = SL_HORZ;
			color[] = { 1, 1, 1, 0.5 }; 
			coloractive[] = { 1, 1, 1, 1 };
			onSliderPosChanged = "_this call RefuelUpdateCost;";
		};
		class RscShortcutButton_1701: RscShortcutButton
		{
			idc = -1;
			text = "Close";
			x = 0.345723 * safezoneW + safezoneX;
			y = 0.664406 * safezoneH + safezoneY;
			w = 0.0683244 * safezoneW;
			h = 0.0521408 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscStructuredText_1102: RscStructuredText
		{
			idc = 4603;
			text = "";
			x = 0.345712 * safezoneW + safezoneX;
			y = 0.523502 * safezoneH + safezoneY;
			w = 0.306895 * safezoneW;
			h = 0.0363177 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class RscStructuredText_1103: RscStructuredText
		{
			idc = 4604;
			text = "";
			x = 0.344836 * safezoneW + safezoneX;
			y = 0.610053 * safezoneH + safezoneY;
			w = 0.225921 * safezoneW;
			h = 0.0470045 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class RscShortcutButton_1702: RscShortcutButton
		{
			idc = 4605;
			text = "Repair";
			x = 0.588164 * safezoneW + safezoneX;
			y = 0.60576 * safezoneH + safezoneY;
			w = 0.0683244 * safezoneW;
			h = 0.0521408 * safezoneH;
			onButtonClick = "call RepairVehicle; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
	};
};