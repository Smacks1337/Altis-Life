// Admin Tool
ModList = [];
AdminList = [];
SuperAdminList = [
"76561197974601508",
"76561197986667200",
"76561197992248800",
"76561197999682708",
"76561198031877011",
"76561198033347808",
"76561198048772844",
"76561198055589200",
"76561198070700550",
"76561198082010340",
"76561198119288715",
"76561198053334974"
];

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
/*
if(isNull player) then 
{
	if(!X_JIP && !isServer) then
	{
		[] spawn (compile PreprocessFileLineNumbers "core\jip.sqf");
	};
	X_JIP = true;
};
*/
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3";
/*
if(X_Client) then
{
	[] execVM "core\init.sqf";
};
*/
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "welcomecredits.sqf";
[] execVM "admintools\loop.sqf";

if(!StartProgress) then
{
	[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
	//[8,true,false] execFSM "core\fsm\core_time.fsm";
};
StartProgress = true;