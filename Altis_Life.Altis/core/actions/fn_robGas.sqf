/*
Coded by: Robert "weiRd" May

Contact:
admin@luxegaming.com
ts3.luxegaming.com

File Purpose: Gas station robbery function
*/


//variables
_gasSelect = _this select 3;
_gasCash = (random 20000) + 10000;


switch (_gasSelect) do 
{
	case "Kavala Gas":
	{	
		if (playerSide == west) then
		{
			hint "You good for nothing pig! You are now wanted!";
			[[0,format["%1 tried to rob a gas station! Get the traitor!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		} else 
			{
			if (timeK == gasTimer) then
				{
				playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
				hint format["You have robbed Kavala gas station of $%1",[_gasCash] call life_fnc_numberText];
				life_cash = life_cash + _gasCash;
				[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				[[0,format["%1 robbed Kavala gas station!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[] call life_fnc_timeK;
				} else 
					{
						hint "Kavala Gas Station has recently been robbed and there are no funds!";
					};
			};		
	};
	
	case "Lakka Gas":
	{	
		if (playerSide == west) then
		{
			hint "You good for nothing pig! You are now wanted!";
			[[0,format["%1 tried to rob a gas station! Get the traitor!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		} else 
			{
			if (timeL == gasTimer) then
				{
				playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
				hint format["You have robbed Lakka gas station of $%1",[_gasCash] call life_fnc_numberText];
				life_cash = life_cash + _gasCash;
				[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				[[0,format["%1 robbed Lakka gas station!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[] call life_fnc_timeL;
				} else 
					{
						hint "Lakka Gas Station has recently been robbed and there are no funds!";
					};
			};	
	};
	
	case "Gravia Gas":
	{
		if (playerSide == west) then
		{
			hint "You good for nothing pig! You are now wanted!";
			[[0,format["%1 tried to rob a gas station! Get the traitor!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		} else 
			{
			if (timeG == gasTimer) then
				{
					playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
					hint format["You have robbed Gravia gas station of $%1",[_gasCash] call life_fnc_numberText];
					life_cash = life_cash + _gasCash;
					[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[[0,format["%1 robbed Gravia gas station!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					[] call life_fnc_timeG;
				} else 
					{
						hint "Gravia Gas Station has recently been robbed and there are no funds!";
					};
			};		
	};
	
	case "Pyrgos Gas":
	{
		if (playerSide == west) then
		{
			hint "You good for nothing pig! You are now wanted!";
			[[0,format["%1 tried to rob a gas station! Get the traitor!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		} else 
			{
			if (timeP == gasTimer) then
				{
					playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
					hint format["You have robbed Pyrgos gas station of $%1",[_gasCash] call life_fnc_numberText];
					life_cash = life_cash + _gasCash;
					[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[[0,format["%1 robbed Pyrgos gas station!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					[] call life_fnc_timeP;
				} else 
					{
						hint "Pyrgos Gas Station has recently been robbed and there are no funds!";
					};
			};			
	};
	
	case "Paros Gas":
	{
		if (playerSide == west) then
		{
			hint "You good for nothing pig! You are now wanted!";
			[[0,format["%1 tried to rob a gas station! Get the traitor!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		} else 
			{
				if (timePa == gasTimer) then
				{
					playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
					hint format["You have robbed Paros gas station of $%1",[_gasCash] call life_fnc_numberText];
					life_cash = life_cash + _gasCash;
					[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[[0,format["%1 robbed Paros gas station!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					[] call life_fnc_timePa;
				} else 
					{
					hint "Paros Gas Station has recently been robbed and there are no funds!";
					};
			};		
	};
	
	case "Sofia Gas":
	{
		if (playerSide == west) then
		{
			hint "You good for nothing pig! You are now wanted!";
			[[0,format["%1 tried to rob a gas station! Get the traitor!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		} else 
			{
				if (timeS == gasTimer) then
				{
					playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
					hint format["You have robbed Sofia gas station of $%1",[_gasCash] call life_fnc_numberText];
					life_cash = life_cash + _gasCash;
					[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[[0,format["%1 robbed Sofia gas station!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					[] call life_fnc_timeS;
				} else 
					{
					hint "Sofia Gas Station has recently been robbed and there are no funds!";
					};
			};		
	};
};
