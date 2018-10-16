if (is_touching_water && can_swim)
{
	if (key_up && controls_enabled)
	{
		sink = false;
		vsp -= 1 * sign(global.grv);
		vsp = clamp(vsp, -3, 100);
		
		//alarm[0] = room_speed * 0.2;	
	}
	else
	{
		vsp = 1.5;	// Constant sinking movement
	}
}
