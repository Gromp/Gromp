#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for available spawn points depending on the units side.

	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_markers","_houses","_house","_houseName","_pos"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_markers = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};

	case civilian:
	{
		//if have reb license, only spawn here
		if(license_civ_rebel && playerSide == civilian) then {
		_markers = [
					["reb_spawn_1","Rebel North","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_2","Rebel South West","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_3","Rebel South East","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_4","Negades","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_5","Gravia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_6","Dorida","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_7","Gatolia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};

		//if no rebel license, than can spawn normal loc
		if(!license_civ_rebel && playerSide == civilian) then {
		_markers = [

					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};

		//if donor, they also get these options
		if(__GETC__(life_donator) > 0) then {
			_markers = _markers + [
					["donor_kavala","Donor Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["donor_north","Donor Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["donor_airfield","Donor Airfield","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]

				];
		};

		_houses = [
			"Land_i_House_Small_01_V1_F",
			"Land_i_House_Small_01_V2_F",
			"Land_i_House_Small_01_V3_F",
			"Land_i_House_Small_02_V1_F",
			"Land_i_House_Small_02_V2_F",
			"Land_i_House_Small_02_V3_F",
			"Land_i_House_Small_03_V1_F",
			"Land_i_House_Big_01_V1_F",
			"Land_i_House_Big_01_V2_F",
			"Land_i_House_Big_01_V3_F",
			"Land_i_House_Big_02_V1_F",
			"Land_i_House_Big_02_V2_F",
			"Land_i_House_Big_02_V3_F"
		];

		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestObject [_pos,"House_F"];
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

				_markers set[count _markers,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};



		 if ((getPlayerUID player) in ["76561198064483496","76561197961219363","76561198140414836","76561197961219363","76561198131224873","76561198045824491","76561198053733352","76561197970547518","76561198042105842","76561197960977936","76561197969115229","76561198030383044","76561197968334030","76561198000966361","76561197960717007","76561198069432149","76561198089663382","76561198000966361","76561198030383044","76561197968334030","76561198009434866","76561198033511305","76561198034357463"]) then {
        _markers = _markers + [["btdspawn","bTd Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];	};

		if (life_gangid == 673 )  then {
        _markers = _markers + [["csdlspawn","CSDL Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];  };

		if ((getPlayerUID player) in ["76561198013556361","76561197961219363","76561198067717731","76561197969669771","76561197971835388","76561198136085493","76561198026673670","76561198022105784","76561198126729046","76561198028358244","76561198028683922","76561198051147852", "76561198130432201", "76561198128200362", "76561198136699186", "76561198015749849", " 76561198049952965", "76561198132646462"]) then {
        _markers = _markers + [["warlordspawn","Sons of Silence HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];  };

		if (life_gangid == 730) then {
			_markers = _markers + [["abspawn","Warlord","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];	};
	};

	case independent: {
		_markers = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_markers;
