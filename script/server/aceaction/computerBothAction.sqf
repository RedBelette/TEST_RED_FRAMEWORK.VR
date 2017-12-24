_targetAction = _this select 0;

diag_log ["Start script\server\aceaction\computerBothAction.sqf", _targetAction];

// Test RF_fnc_action
_action = ["clientAction",
			"Set up action",
 			"",
 			{
 				["actionTest", "hint 'The action has been activated'; actionTest=false;"] call RF_fnc_action;
 			},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_action", _action];

// Trigger action
_action = ["triggerAction",
			"Trigger action",
 			"",
 			{
 				actionTest=true;
 			},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Trigger action", _action];

// Test RF_fnc_delayedAction
_action = ["clientDelayedAction",
			"Set up delayed action",
 			"",
 			{
 				["delayedActionTest", "hint 'The delayed action has been activated after 5 secs'; delayedActionTest=false;", 5] call RF_fnc_delayedAction;
 			},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_delayedAction", _action];

// Trigger action
_action = ["triggerDelayedAction",
			"Trigger delayed action",
 			"",
 			{
 				delayedActionTest=true;
 			},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Trigger action", _action];

// Test RF_fnc_repeatedAction
_action = ["clientRepeatedAction",
			"Start repeated action",
 			"",
 			{
 				["script\server\remoteExecServer\repeatedAction.sqf"] remoteExec ["execVM", 2, false];
 			},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_repeatedAction", _action];

diag_log ["End script\server\aceaction\computerBothAction.sqf"];