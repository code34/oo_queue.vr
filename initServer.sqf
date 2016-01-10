		call compilefinal preprocessFileLineNumbers "oo_queue.sqf";

		 _queue = ["new", ""] call OO_QUEUE;

		["insert", [4, "JOHN"]] call _queue;	
		["insert", [4, "OLIVIER"]] call _queue;
		["insert", [3, "NICOLAS"]] call _queue;
		["insert", [3, "SOPHIE"]] call _queue;
		["insert", [1, "ANTOINE"]] call _queue;
		["insert", [2, "JP"]] call _queue;
		["insert", [2, "MIMI"]] call _queue;
		["insert", [6, "DARKVADOR"]] call _queue;

		sleep 2;
		
		while { !("isEmpty" call _queue) } do {
			hint format ["next element : %1",  ["remove", ""] call _queue];
			sleep 1;
		};

		hint "empty!";



	


		



