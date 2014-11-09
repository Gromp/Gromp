/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {25000}; //Heroin processing license cost
	case "marijuana": {19500}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {75000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "coke": {30000};
	case "sand": {14500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "meth": {25000};
	case "eporn": {20000};
	case "lsd": {25000};
	case "rebMedic": {50000};
	case "rebSniper": {300000};
	case "rebExplosive": {300000};
	case "rebGrenade": {300000};
	case "rebGunner": {300000};
	case "rebChemical": {200000};
	case "silver": {20000};
	case "uraniumWeap": {40000};
	case "uraniumMed": {30000};
	case "bath": {25000};
	case "painkill": {15000};
	case "blooddiamond": {20000};
	case "snuff": {20000};
	case "home": {100000};
};