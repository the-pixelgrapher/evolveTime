// Player control script

walksp *= !global.level_complete;

#region // Grounded check
if (place_meeting(x, y + 1, obj_solid) && collisons) 
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
var jump_buffer = 5; // Num of steps jump still allowed after leaving ground

if (!grounded)
{
	airtime += 1;
}
else
{
	airtime = 0;
}

// Do not allow jumping if player leaves platform for too long
if (airtime >= jump_buffer)
{
	jump_armed = false;	
}

// Water collision check
if (place_meeting(x,y,obj_fluid))
{
	is_touching_water = true;
	if (!can_swim)
	{
		scr_kill();	
	}
}
else
{
	is_touching_water = false;
}

#endregion

#region // Control
if (controls_enabled && !global.level_complete)
{
	// Ensure walksp is always positive
	walksp *= sign(walksp);
	
	// Get player input
	scr_controls();
	
	// Capture another animal
	scr_capture();

	// Pushing movable objects
	if (can_push) {scr_push();}
	
	// Breaking breakable objects
	if (can_break) {scr_break_blocks();}
	
	// Igniting flammable objects
	if (can_ignite) 
	{
		if (key_down_p)
		{
			on_fire = !on_fire;
		}
	}
	
	// Swimming
	scr_swim();

	// Horizontal movement calculation
	var move = (key_right - key_left) * controls_enabled;
	hsp = move * walksp;

	// Jumping
	if (key_jump && jump_armed && can_jump && controls_enabled)
	{
		vsp = jump_height * -1 * sign(global.grv);
		jump_armed = false;
	}
}
#endregion
else if (do_walk)
#region // Walk back and forth
{
	hsp = round(walksp/2);

	if (place_meeting(x + hsp, y, obj_solid) && collisons)
	{
		walksp *= -1;
	}
}
#endregion

if (capture_cooldown > 0)
{
	capture_cooldown -=1; 	
}

// Kill animal if crushed by solid
image_xscale *= 54/64;
if (place_meeting(x, y, obj_solid))
{
	scr_kill();
}
image_xscale = 1 * sign(image_xscale);

// Restart if character falls below map
if (y > 1024)
{
	room_restart();
}