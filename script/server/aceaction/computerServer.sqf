_targetAction = _this select 0;

diag_log ["Start script\server\aceaction\computerServer.sqf", _targetAction];

// Test RF_fnc_huntirSatellite
_action = ["clientActionHuntirSatellite",
			"Install a huntir satellite",
 			"",
 			{["script\server\remoteExecServer\huntirSatellite.sqf"] remoteExec ["execVM", 2, false]},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_huntirSatellite", _action];

// Test RF_fnc_spawnUnits
_action = ["clientActionSpawnUnits",
			"Appear 3 units",
 			"",
 			{["script\server\remoteExecServer\spawnUnits.sqf"] remoteExec ["execVM", 2, false]},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_spawnUnits", _action];

// Test RF_fnc_reddition
_action = ["clientActionReddition",
			"Order surrender if opfor under 10",
 			"",
 			{["script\server\remoteExecServer\reddition.sqf"] remoteExec ["execVM", 2, false]},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_reddition", _action];

diag_log ["End script\server\aceaction\computerServer.sqf", _targetAction];