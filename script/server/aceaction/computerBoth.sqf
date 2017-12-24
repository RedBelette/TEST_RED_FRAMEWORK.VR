_targetAction = _this select 0;

diag_log ["Start script\server\aceaction\computerBoth.sqf", _targetAction];

// Test RF_fnc_isPlayerNearEntity
_action = ["clientActionIsPlayerNearEntity",
			"Check a player is close to the quad (under 10 meters)",
 			"",
 			{
 				_isPlayerNearQuad = [quad, 10] call RF_fnc_isPlayerNearEntity;
 				if (_isPlayerNearQuad) then {
 					hint "The player is close to the quad";
				} else {
					hint "The player is far from the quad";
				};
 			},
 			{true},
			{},
 			[],
 			[0,0,0],
 			5] call ace_interact_menu_fnc_createAction;

[_targetAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

diag_log ["Set RF_fnc_isPlayerNearEntity", _action];

diag_log ["End script\server\aceaction\computerBoth.sqf"];