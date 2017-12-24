_targetAction = _this select 0;

// Set the action
_repeatedAction = ["[[4288,2799,100],[4286,3177,100]] call BIS_fnc_ambientFlyBy;", 10] call RF_fnc_repeatedAction;
// Open action registry
call RF_fnc_actionRegistry;
["littleBirdDance", _repeatedAction] call RF_fnc_addAction;
["littleBirdDance"] call RF_fnc_stopAction;

diag_log ["Start script\server\aceaction\computerBoth.sqf", _targetAction];

// Test RF_fnc_runAction
_action = ["clientActionStartAction",
			"Resume action",
 			"",
 			{["script\server\remoteExecServer\runAction.sqf"] remoteExec ["execVM", 2, false];},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_runAction", _action];

// Test RF_fnc_runAction
_action = ["clientActionStopAction",
			"Stop action",
 			"",
 			{["script\server\remoteExecServer\stopAction.sqf"] remoteExec ["execVM", 2, false];},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

// Test RF_fnc_getAction
_action = ["clientActionGetAction",
			"Get action",
 			"",
 			{
 				_getAction = ["littleBirdDance"] call RF_fnc_getAction;
				hint format ["%1", _getAction];
			},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["End script\server\aceaction\computerBothActionRegistry.sqf"];