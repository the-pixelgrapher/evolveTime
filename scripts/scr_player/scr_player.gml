// Player step event script

#region // Grounded check
if (place_meeting(x, y + 1, obj_solid)) 
{
	grounded = true;
	jump_armed = true;
} 
else 
{
	grounded = false;
}
#endregion

#region // Generous jump buffer
var jump_buffer = 5; // num of steps jump still allowed after leaving ground

if (!grounded)
{
	airtime += 1;
}
else
{
	airtime = 0;
}

if (airtime >= jump_buffer)
{
	jump_armed = false;	
}
#endregion

#region // Control
if (controls_enabled)
{
	
	walksp *= sign(walksp);
	
	// Get player input
	scr_controls();
	
	// Capture another animal
	scr_capture();

	// Pushing movable objects
	if (can_push)
	{
		scr_push();
	}
	
	// Breaking breakable objects
	if (can_break)
	{
		scr_break_blocks();
	}

	var move = (key_right - key_left) * controls_enabled;
	hsp = move * walksp;

	// Jumping
	if (key_up_p && jump_armed && can_jump && controls_enabled)
	{
		vsp = jump_height * -1 * sign(global.grv);
		jump_armed = false;
		queue_jump = false;
	}
}
#endregion
else
#region // Walk back and forth
{
	hsp = walksp;
	
	if (place_meeting(x + hsp, y, obj_solid) && collisons)
	{
		walksp *= -1;
	}
}
#endregion

image_xscale *= 0.8;
if (place_meeting(x, y, obj_crate) && collisons)
{
	//instance_destroy();
	collisons = false;
	layer = layer_get_name("game");
	vsp -= 7;
	hsp = 0;
	
}
image_xscale /= 0.8;