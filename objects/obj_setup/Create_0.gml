global.level = 1;
global.reset_timer_length = 45;
global.sound = 1;
global.music = 1;

for (var i = 0; i < 7; i++)
{
	global.controls_shown[i] = false;
}

scr_load();

room_goto(rm_main_menu);