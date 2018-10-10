// Governs behaviour of flammable objects

if (on_fire && hp < 30)
{
	for (i = 0; i < 4; i += 1)
	{
		var cx, cy; // x,y collision checks
		if (i = 0) {cx = +64; cy = +00;} // right
		if (i = 1) {cx = +00; cy = +64;} // down
		if (i = 2) {cx = -64; cy = +00;} // left
		if (i = 3) {cx = +00; cy = -64;} // up
		
		if (place_meeting(x + cx, y + cy, obj_crate))
		{
			with (instance_place(x + cx, y + cy, obj_crate))
			{
				on_fire = true;
			}
		}
	}
	
	
}