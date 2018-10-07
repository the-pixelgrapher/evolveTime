// Transfer control to another animal

if (place_meeting(x, y, obj_animal) && vsp > 0)
{
	var target = instance_place(x, y + 1, obj_animal);
	with (target)
	{
		controls_enabled = true;
	}
	
	controls_enabled = false;
	
}