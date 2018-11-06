//global.level_complete = false;

if (place_meeting(x, y, obj_animal) && !global.isDead)
{
	global.level_complete = true;
	image_speed = 1;
}

if (image_index > image_number - 1)
{
	image_speed = 0;
}

// Wave(from, to, duration, offset)

ya = scr_wave(yo - 8, yo + 8, 2, 0.0);