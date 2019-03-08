if(!local player)exitWith{};
if(isClass(configfile >> "CfgPatches" >> "ServerTransferSystem") isEqualTo false)exitWith{
  diag_log "Addon: ServerTransferSystem is missing";
};
_stsInProgress = profileNamespace getVariable["fox_stsInProgress",false];
if(_stsInProgress isEqualTo false)exitWith{};

call fox_sts_fnc_loadGear;
[] spawn fox_sts_fnc_moveToExit;

[]spawn{
  sleep 30;
  call fox_sts_fnc_cleanupSTS;
};
