//global.level_complete = false;

if (place_meeting(x, y, obj_animal))
{
	global.level_complete = true;
}

// Wave(from, to, duration, offset)

ya = scr_wave(yo - 8, yo + 8, 2, 0.0);