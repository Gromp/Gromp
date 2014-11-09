enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
gasTimer = 1800;
timeK = gasTimer;
timeL = gasTimer;
timeG = gasTimer;
timeP = gasTimer;
timePa = gasTimer;
timeS = gasTimer;
vdmlock = false; // fn_vdmhandle (used to make sure added to wanted list only once per vdm)

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "zlt_fastrope.sqf";
[] execVM "scripts\gas\teargas.sqf";
[] execVM "scripts\gas\teargas40.sqf";
[] execVM "scripts\HandBrake.sqf";
[] execVM "Server Messages\message.sqf";
[] execVM "noSideVoice.sqf";
[] execVM "construction.sqf"; //Taken from Stratis-RP: Ultimate
[] execVM "OnKeyPress.sqf"; //Taken from Hostage Rescue author Zooloo75


[["B_Truck_01_box_F","B_Truck_01_transport_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_medical_F","O_Truck_03_device_F","B_Truck_01_medical_F","B_Truck_01_covered_F","I_Truck_02_covered_F","I_Truck_02_transport_F","B_G_Offroad_01_armed_F","O_MRAP_02_hmg_F","O_MRAP_02_F","B_MRAP_01_hmg_F"],["B_Heli_Light_01_F"],["B_Boat_Armed_01_minigun_F"]] execVM "scripts\lift_init.sqf";

[] spawn
{
while {true} do
{
waitUntil {!isNull (findDisplay 49)};
((findDisplay 49) displayCtrl 122) ctrlEnable false;
((findDisplay 49) displayCtrl 122) ctrlShow false;
waitUntil {isNull (findDisplay 49)};
};
}; 

StartProgress = true;
player setVariable["restrained",false,true];
player setVariable["hostage",false,true];
