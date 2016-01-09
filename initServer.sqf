		call compilefinal preprocessFileLineNumbers "oo_queue.sqf";

		 _queue = ["new", ""] call OO_QUEUE;

		["put", [1, "ANTOINE"]] call _queue;
		["put", [2, "JP"]] call _queue;
		["put", [2, "MIMI"]] call _queue;
		["put", [3, "NICOLAS"]] call _queue;
		["put", [3, "SOPHIE"]] call _queue;
		["put", [4, "ELIOT"]] call _queue;
		["put", [5, "JULIE"]] call _queue;

		sleep 1;

		hintc format ["pomme: %1", ["get", 1] call _queue];

		sleep 5;

		hintc format ["cerise: %1", ["get", 3] call _queue];

		sleep 5;

		hintc format ["carotte: %1", ["get", 2] call _queue];

		sleep 5;

		hintc format ["inconu pomme: %1", ["get", 1] call _queue];

		sleep 5;

		hintc format ["file attente: %1", "getQueue" call _queue];

		 //["delete", _queue] call OO_QUEUE;


	


		



