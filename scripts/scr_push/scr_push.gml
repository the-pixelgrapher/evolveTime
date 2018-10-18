// Pushing blocks

if (place_meeting(x + hsp, y, obj_crate))
{
	var this = id; // Get ID of player character
	
	// Get ID of block being pushed
	var this_crate = instance_place(x + hsp, y, obj_crate);
	
	// Reduce movement speed when pushing
	with (this_crate)
	{
		scr_move(this.hsp/1.5);
	}
	
	hsp /= 1.5;
}