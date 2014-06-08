waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ModList || (getPlayerUID player) in AdminList || (getPlayerUID player) in SuperAdminList) then {
	sleep 30;
	player addaction [("<t color=""#0074E8"">" + ("Admin Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};