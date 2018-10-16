if (is_touching_water && can_swim)
{
	
	if (key_up && controls_enabled)
	{
		sink = false;
		vsp -= 0.5 * sign(global.grv);
		vsp = clamp(vsp, -2.5, 100);
		
		//alarm[0] = room_speed * 0.2;	
	}
	else
	{
		vsp = clamp(vsp, 0, 1.33);		// Constant sinking movement
	}
}
