// Load level progress

ini_open("progress.ini");


	for 
	(
		var i = 0; 
			i < 15; 
			i += 1;
	)
	{
		global.level_state[i] = clamp( ini_read_real("level_progress", string(i), 0), 0, 2 );
	}
	global.level_state[0] = clamp( ini_read_real("level_progress", string(0), 0), 1, 2 );


ini_close();
