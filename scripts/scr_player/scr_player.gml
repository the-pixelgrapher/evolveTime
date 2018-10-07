// Player step event script

// Grounded check
if (place_meeting(x, y + 1, obj_solid)) 
{
	grounded = true;
	jump_armed = true;
} 
else 
{
	grounded = false;
}

// Generous jump buffer
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

if (controls_enabled)
{
	scr_capture();
	
	// Get player input
	scr_controls();

	// Pushing solid objects
	if (can_push)
	{
		scr_push();
	}

	var move = (key_right - key_left) * controls_enabled;
	hsp = move * walksp;

	// Jumping
	if (key_up_p && jump_armed && can_jump)
	{
		vsp = -7;
		jump_armed = false;
	}
}
else
{
	hsp = 0;
}