_stsData = param[0,[]];
_player = param[1,objNull];

_clientID = owner _player;

_stsData remoteExec ["STS_fnc_Transfer",_clientID];
