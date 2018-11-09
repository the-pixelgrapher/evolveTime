// Save level progress

ini_open("progress.ini");

	if ini_section_exists("level_progress") {ini_section_delete("level_progress");}
	for 
	(
		var i = 0; 
			i < 16; 
			i += 1;
	)
	{
		ini_write_real("level_progress",string(i),global.level_state[i]);
	}
	
ini_close();
