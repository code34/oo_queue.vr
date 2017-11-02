		call compile preprocessFileLineNumbers "oo_queue.sqf";

		 _queue = ["new", ""] call OO_QUEUE;

		["put", [4, "JOHN"]] call _queue;	
		["put", [4, "OLIVIER"]] call _queue;
		["put", [3, "NICOLAS"]] call _queue;
		["put", [3, "SOPHIE"]] call _queue;
		["put", [1, "ANTOINE"]] call _queue;
		["put", [2, "JP"]] call _queue;
		["put", [2, "MIMI"]] call _queue;
		["put", [6, "DARKVADOR"]] call _queue;

		sleep 2;
		
		while { !("isEmpty" call _queue) } do {
			hint format ["next element : %1 count %2",  ["get", ""] call _queue, "count" call _queue];
			sleep 1;
		};

		hint "empty!";



	


		



