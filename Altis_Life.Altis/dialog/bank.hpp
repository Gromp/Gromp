class Life_atm_management {
	idd = 2700;
	name= "life_atm_menu";
	movingEnable = false;
	enableSimulation = true;

	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {0.275,0.51,0.706,1};
			idc = -1;
			x = 0.35;
			y = 0.2;
			w = 0.3;
			h = (1 / 25);
		};

		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.35;
			y = 0.2 + (11 / 250);
			w = 0.3;
			h =  0.699 - (22 / 250);
		};
	};

	class controls {

		class CashTitle : Life_RscStructuredText
		{
			idc = 2701;
			text = "";

			x = 0.39;
			y = 0.26;
			w = 0.3;
			h = 0.14;
		};

		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_ATM_Title";
			x = 0.35;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};

		class WithdrawButton : life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_ATM_Withdraw";
			colorBackground[] = {0.275,0.51,0.706,1};
			onButtonClick = "[] call life_fnc_bankWithdraw";

			x = 0.432;
			y = 0.46;
			w = (6 / 40);
			h = (1 / 25);
		};

		class DepositButton : life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_ATM_Deposit";
			colorBackground[] = {0.275,0.51,0.706,1};
			onButtonClick = "[] call life_fnc_bankDeposit";

			x = 0.432;
			y = 0.512;
			w = (6 / 40);
			h = (1 / 25);
		};

		class moneyEdit : Life_RscEdit
		{
			idc = 2702;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.4; y = 0.41;
			w = 0.2; h = 0.03;
		};

		class PlayerList : Life_RscCombo
		{
			idc = 2703;

			x = 0.4; y = 0.58;
			w = 0.2; h = 0.03;
		};

		class TransferButton : life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_ATM_Transfer";
			colorBackground[] = {0.275,0.51,0.706,1};
			onButtonClick = "[] call life_fnc_bankTransfer";

			x = 0.432;
			y = 0.63;
			w = (6 / 40);
			h = (1 / 25);
		};

		class GangDeposit : TransferButton
		{
			idc = 2705;
			text = "To Gangbank";
			onButtonClick = "[] call life_fnc_gangDeposit";
			y = .69; x = 0.365;
			w = 0.275;
		};

		class GangWithdraw : TransferButton
		{
			idc = 2706;
			text = "From Gangbank";
			onButtonClick = "[] call life_fnc_gangWithdraw";
			y = .74; x = 0.365;
			w = 0.275;
		};

		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.35;
			y = 0.84 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};
