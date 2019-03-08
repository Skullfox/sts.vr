if(!local player)exitWith{};

_stsExit = profileNamespace getVariable ["fox_stsExitNode",[]];
if(_stsExit isEqualTo [])exitWith{diag_log format["No valid sts exit for unit %1",name player]};

_exitType = _stsExit select 0;
switch (_exitType) do {
    case ("marker"): {
        player setpos getMarkerPos (_stsExit select 1);
        player setDir (_stsExit select 2);
    };
    case ("position"): {
      player setposASL (_stsExit select 1);
      player setDir (_stsExit select 2);
    };
    default {
        //default stuff
    };
};
