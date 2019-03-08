if(!local player)exitWith{};
if(isClass(configfile >> "CfgPatches" >> "ServerTransferSystem") isEqualTo false)exitWith{
  diag_log "Addon: ServerTransferSystem is missing";
};
_stsData = param[0,[]];
_stsExit = param[1,false];


// ["marker",""]
// ["position",[]]
// dir
// [x,x,dir]
// ["IP","PORT",TIMEOUT,"PASSWORD",AUTOJOIN] remoteExec ["STS_fnc_Transfer",-2];
if(_stsExit isEqualTo false)exitWith{
  systemChat "No STS exit passed";
};
if(_stsData isEqualTo [])exitWith{
    systemChat "Missing STS data";
};

//verifiy exit point
call fox_sts_fnc_saveGear;
// STS params, player
profileNamespace setVariable ["fox_stsInProgress",true];
profileNamespace setVariable ["fox_stsExitNode",_stsExit];

saveProfileNamespace;
systemChat str _stsData;
[_stsData,player]remoteExec["fox_sts_fnc_requestSTS",2];
