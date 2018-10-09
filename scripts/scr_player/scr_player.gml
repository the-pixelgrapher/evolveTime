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
	
	if (key_up_p && vsp > 0)
	{
		// queue_jump = 1;
	}
	
	if (queue_jump)
	{
		//key_up_p = 1;
	}
	
	// Capture another animal
	scr_capture();

	// Pushing solid objects
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
		vsp = jump_height * -1;
		jump_armed = false;
		queue_jump = false;
	}
}
#endregion
else
#region // Walk back and forth
{
	hsp = walksp;
	
	if (place_meeting(x + hsp, y, obj_solid))
	{
		walksp *= -1;
	}
}
#endregion