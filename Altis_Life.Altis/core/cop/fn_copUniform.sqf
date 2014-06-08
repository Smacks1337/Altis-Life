// http://www.altisliferpg.com/topic/827-tutorial-custom-cop-uniforms/

#define __GETC__(var) (call var)

// Standard Cop Uniforms by coplevel.
//Create new 'if' for every coplevel you want to have a special uniform.
//(e.G. if(__GETC__(life_coplevel) == 1) then {... )
if (__GETC__(life_coplevel) > 1) then {
    player setObjectTextureGlobal [0, "textures\police_shirt.paa"];
};

/*if (__GETC__(life_coplevel) > 2)  then {
    player setObjectTextureGlobal [0, "textures\police_shirt.paa"];
};*/	
	
// Special Uniforms cops can buy in shops. Add new 'if' for every classname you want the skin to be overwritten. (warning, does NOT work with every class!)	
//if ((uniform player) == "U_B_CombatUniform_mcam_worn") then {
//    player setObjectTextureGlobal [0, "textures\police_shirt.paa"];
//};


// call this script in as many files as possible, especially init_cop, init_civ and all files related to the cop-shop.
// see fn_clothing_shop.sqf case 0