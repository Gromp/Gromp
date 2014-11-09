/*
File: fn_execute.sqf
Author: Angus "ToXic" Moore
*/

private["_target","_caller"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_caller = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

_target addAction["Execute that motherfucker.", {
	_target = _this select 0;
	_targetName = _target getVariable "name";
	_caller = _this select 1;
	if (_target distance _caller < 2) then {
		hint format["You are now executing %1", (_targetName)];
		_target setVariable["permDead", TRUE, TRUE];
		[[0, format["%1 has finished off %2.",(name _caller),(_targetName)]], "life_fnc_broadcast",nil,false] spawn life_fnc_MP;

		/*_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
		_soundToPlay = _soundPath + "sounds\execute.ogg";
		1 fadeMusic 10;
		1 fadeSound 10;
		playSound3D [_soundToPlay, player, false, getPos player, 100, 1, 50];*/
	} else {hint "You need to be within 2 metres.";};
}];