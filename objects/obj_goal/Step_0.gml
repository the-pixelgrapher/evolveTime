//global.level_complete = false;

if (place_meeting(x, y, obj_animal))
{
	global.level_complete = true;
} 
else
{
	global.level_complete = false;
}

// Wave(from, to, duration, offset)
xsa = scr_wave(1, 1.25, 1.5, 0.0);
ysa = scr_wave(1, 1.25, 1.5, 0.0);

ya = scr_wave(y - 8, y + 8, 2, 0.0);