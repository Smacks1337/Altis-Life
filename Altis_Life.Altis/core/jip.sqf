// Lines below added for cop uniforms script
{
	if (_x != player) then {
		if (side _x == west) then {
			[_x] call life_fnc_copUniform;
		};
	};
} forEach playableUnits;