// Load level progress

ini_open("progress.ini");

	global.level_unlocked = -1;
	global.completed_levels = -1;
	
	for 
	(
		var i = 0; 
			i < 16; 
			i += 1;
	)
	{
		global.level_state[i] = clamp( ini_read_real("level_progress", string(i), 0), 0, 2 );
		
		if (global.level_state[i] > 0)
		{
			global.level_unlocked += 1;
		}
		if (global.level_state[i] = 2)
		{
			global.completed_levels += 1;
		}
	}
	global.level_state[0] = clamp( ini_read_real("level_progress", string(0), 0), 1, 2 );


ini_close();
