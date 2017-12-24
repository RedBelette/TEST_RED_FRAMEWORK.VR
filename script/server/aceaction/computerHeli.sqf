_targetAction = _this select 0;

diag_log ["Start script\server\aceaction\computerHelico.sqf", _targetAction];

// Test RF_fnc_sendHelicoToFight
_action = ["clientActionSendHelicoToFight",
			"Send the helicopter to combat",
 			"",
 			{["script\server\remoteExecServer\sendHelicoToFight.sqf"] remoteExec ["execVM", 2, false]},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_sendHelicoToFight", _action, helicoGroup];

// Test RF_fnc_landingHelico
_action = ["clientActionLandingHelico",
			"Helicopters return to the base",
 			"",
 			{["script\server\remoteExecServer\landingHelico.sqf"] remoteExec ["execVM", 2, false]},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_landingHelico", _action, helicoGroup];

diag_log ["End script\server\aceaction\computerHelico.sqf", _targetAction];