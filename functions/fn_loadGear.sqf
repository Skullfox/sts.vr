if(!local player)exitWith{};

_gear = profileNamespace getVariable["fox_stsGear",[]];

if(_gear isEqualTo [])exitWith{};
player setUnitLoadout _gear;
_playerData = profileNamespace getVariable["fox_stsPlayer",[]];
_dmg = _playerData param[0,0];
player setDamage _dmg;
