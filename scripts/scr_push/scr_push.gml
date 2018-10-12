// Pushing blocks

if (place_meeting(x + hsp, y, obj_crate))
{
	var this = id; // Get ID of player character
	
	// Get ID of block being pushed
	var this_crate = instance_place(x + hsp, y, obj_crate);
	
	// Push block at half movement speed
	with (this_crate)
	{
		scr_move(this.hsp/2);
	}
	
	// Halve movement speed when pushing
	hsp /= 2;
}