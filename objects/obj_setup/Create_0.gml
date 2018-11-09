global.level = 1;
global.reset_timer_length = 45;
global.sound = 1;
global.music = 1;

for (var i = 0; i < 7; i++)
{
	global.controls_shown[i] = false;
}

scr_load();

// ---- CHECKING CURRENTY UNLOCKED LEVELS
global.level_unlocked = -1;
global.completed_levels = -1;
for (var i = 0; i < 16; i++)
{
	if (global.level_state[i] > 0)
	{
		global.level_unlocked += 1;
	}
	if (global.level_state[i] = 2)
	{
		global.completed_levels += 1;
	}
}


room_goto(rm_main_menu);
