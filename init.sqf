		call compile preprocessFileLineNumbers "oo_queue.sqf";
		call compile preprocessFileLineNumbers "oo_unittest.sqf";

		 _queue = ["new", ""] call OO_QUEUE;
		 _unittest = "new" call OO_UNITTEST;

		"toArray" call _queue;
		["put", [4, "JOHN"]] call _queue;	
		["put", [4, "OLIVIER"]] call _queue;
		["put", [3, "NICOLAS"]] call _queue;
		["put", [3, "SOPHIE"]] call _queue;
		["put", [1, "ANTOINE"]] call _queue;
		["put", [2, "JP"]] call _queue;
		["put", [2, "MIMI"]] call _queue;
		["put", [6, "DARKVADOR"]] call _queue;

		sleep 2;

		_result = ["assert_equal", [_queue, "toArray",["ANTOINE","JP","MIMI","NICOLAS","SOPHIE","JOHN","OLIVIER","DARKVADOR"], nil]] call _unittest;
		_result = ["assert_equal", [_queue, "count",8, nil]] call _unittest;
		_result = ["assert_equal", [_queue, "isEmpty",false, nil]] call _unittest;
		_result = ["assert_equal", [_queue, "get","ANTOINE", nil]] call _unittest;
		_result = ["assert_equal", [_queue, "get","JP", nil]] call _unittest;
		_result = ["assert_equal", [_queue, "get","MIMI", nil]] call _unittest;
		_result = ["assert_equal", [_queue, "get","NICOLAS", nil]] call _unittest;

		"clearQueue" call _queue;
		_result = ["assert_equal", [_queue, "count",0, nil]] call _unittest;
		_result = ["assert_equal", [_queue, "isEmpty",true, nil]] call _unittest;
		_result = ["assert_equal", [_queue, "get", nil, nil]] call _unittest;

		"dump" call _unittest;