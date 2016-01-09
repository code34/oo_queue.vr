		call compilefinal preprocessFileLineNumbers "oo_queue.sqf";

		 _queue = ["new", ""] call OO_QUEUE;

		 sleep 2;

		 ["delete", _queue] call OO_QUEUE;


	


		



