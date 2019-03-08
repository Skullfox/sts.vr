if(!local player)exitWith{};
_gear = getUnitLoadout player;
profileNamespace setVariable ["fox_stsGear",_gear];
profileNamespace setVariable ["fox_stsPlayer",[getDammage player]];
