// Governs behaviour of flammable objects

if (on_fire && hp < 30)
{
	for (i = 0; i < 4; i += 1)
	{
		var cx, cy; // x,y collision checks
		if (i == 0) {cx = +2; cy = +0;} // right
		if (i == 1) {cx = +0; cy = +2;} // down
		if (i == 2) {cx = -2; cy = +0;} // left
		if (i == 3) {cx = +0; cy = -2;} // up
		
		if (place_meeting(x + cx, y + cy, obj_flammable))
		{
			with (instance_place(x + cx, y + cy, obj_flammable))
			{
				on_fire = true;
			}
		}
	}	
}