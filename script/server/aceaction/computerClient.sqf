_targetAction = _this select 0;

diag_log ["Start script\server\aceaction\computerClient.sqf", _targetAction];

// Test RF_fnc_scenarioTitle
_action = ["clientActionScenarioTitle",
			"Show mission title",
 			"",
 			{["Test Red Framework", "by RedBelette"] call RF_fnc_scenarioTitle;},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_scenarioTitle", _action];

// Test RF_fnc_imageFullScreen
_action = ["clientActionImageFullScreen",
			"Display an image in full screen",
 			"",
 			{["media\images\image.paa", 5] call RF_fnc_imageFullScreen;},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_imageFullScreen", _action];

diag_log ["End script\server\aceaction\computerClient.sqf", _targetAction];