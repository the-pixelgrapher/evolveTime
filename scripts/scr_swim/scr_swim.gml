{
	if (sink = true) 
	{
		vsp = 0.5;						// Constant sinking movement
	}
	
	if (key_up)
	{
		sink = false;
		vsp = jump_height * -0.3 * sign(global.grv);
		alarm[0] = room_speed * 0.2;	// Enables vertical movement without being slowed
	}
	if (key_down)
	{
		vsp = 1.5;
	}
}