// Pushing blocks
var h = place_meeting(x + hsp, y, obj_crate);
var hsign = sign(hsp);		// Get direction of movement
var this = id;				// Get ID of player character

var crate = instance_place(x + hsp, y, obj_crate);	// Get ID of immediate crate being pushed

// Access immedaite crate being pushed
with (crate)
{
	if (place_meeting(x + hsign, y, obj_crate))
	{
		var crate_h2 = instance_place(x + hsign, y, obj_crate);
		with (crate_h2)
		{
			scr_move(this.hsp/1.5);
		}
	}
		
	if (place_meeting(x, y - 1, obj_crate))
	{
		var crate_v2 = instance_place(x, y - 1, obj_crate);
		with (crate_v2)
		{
			scr_move(this.hsp/1.5);
		}
	}
	
	// Push immediate crate
	scr_move(this.hsp/1.5);
}

// Reduce movement speed when pushing
if (h)
{
	hsp /= 1.5;
}


