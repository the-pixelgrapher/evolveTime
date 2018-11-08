global.level = 0;
global.reset_timer_length = 45;

for (var i = 0; i < 7; i++)
{
	global.controls_shown[i] = false;
}


scr_load();


room_goto_next();