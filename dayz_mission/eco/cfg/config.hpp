#include "defines.hpp"

class RscTitles {
	class MTrader {
		idd = -1;
	    fadeout=0;
	    fadein=0;
		onLoad = "uiNamespace setVariable ['MTraderWealth', _this select 0];";
		duration = 10e10;
		name= "MTraderGui";
		controlsBackground[] = {};
		objects[] = {};
		class controls {
			class MTraderMoney:RscStructuredText {
				idc = 1;
				size = 0.040;
				text = "";
				x = 0.925313 * safezoneW + safezoneX;
				y = 0.5 * safezoneH + safezoneY;
				w = 0.14; h = 0.20;
			};
			class MTraderBank:RscStructuredText {
				idc = 2;
				size = 0.040;
				text = "";
				x = 0.925313 * safezoneW + safezoneX;
				y = 0.55 * safezoneH + safezoneY;
				w = 0.14; h = 0.20;
			};
		};
	};
	class ExampleTitle {     
		idd = -1; 
		duration = 10; //show for 10 seconds 
		class controls 
		{ 
			class ExampleControl 
			{
				idc = -1; 
				type = 0; 
				style = 2; //centre text 
				x = safeZoneX + safeZoneW - 0.6 * 3 / 4;  
				y = safeZoneY + safeZoneH - 0.6; 
				h = 0.6; 
				w = 0.6 * 3 / 4; //w == h 
				font = "EtelkaNarrowMediumPro"; 
				sizeEx = 0.03; 
				colorBackground[] = {1,1,0,1}; //yellow background 
				colorText[] = {0,0,1,1}; //blue text 
				text = "Bottom Right Corner Square Box"; 
			};
		};
	};
	class wm_disp {
		idd = -1;
		onLoad = "uiNamespace setVariable ['wm_disp', _this select 0]";
		fadein = 0;
		fadeout = 0;
		duration = 10e10;
		controlsBackground[] = {};
		objects[] = {};
		class controls {
			class wm_text2 {
				idc = 1;
				x = safeZoneX+0.027;//safeZoneW*0.01;
				y = safeZoneY+safeZoneH-0.16;
				w = 1.151*safeZoneH;
				h = 0.057*safeZoneH;
				shadow = 2;
				class Attributes
				{
					font = "EtelkaNarrowMediumPro";
					color = "#24FFFFFF";
					align = "left"; // put "center" here if you want some background
					valign = "middle";
					shadow = 2;
				};
				colorBackground[] = { 1, 0.3, 0, 0 };  // uncomment and increase 4th number to have a background
				font = "EtelkaNarrowMediumPro";
				size = 0.06*safeZoneH;
				type = 13;
				style = 0;
				text="";
			};
		};
	};
};

#include "bank_dialog.hpp"
#include "trader_dialog.hpp"
#include "give_player_dialog.hpp"
#include "refuel_dialog.hpp"

#include "traders.hpp"
#include "skins.hpp"