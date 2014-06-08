#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

[] spawn
{
	private["_texture"];
	while {true} do
	{
		waitUntil{uniform player == "U_Rangemaster"};
		_texture =
		switch (__GETC__(life_coplevel)) do
		{
			case 0: {"textures\police_shirt.paa"};
			case 1: {"textures\police_shirt.paa"};
			case 2: {"textures\police_shirt.paa"};
			case 3: {"textures\police_shirt.paa"};
			case 4: {"textures\police_shirt.paa"};
			case 5: {"textures\police_shirt.paa"};
			case 6: {"textures\police_shirt.paa"};
		};
		
		player setObjectTextureGlobal [0,_texture];
		waitUntil{uniform player != "U_Rangemaster"};
	};
};

//if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
//};

[] call life_fnc_spawnMenu;
[] call life_fnc_copUniform; // Line added for cop uniforms
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.