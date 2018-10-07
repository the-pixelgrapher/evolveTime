// Transfer control to another animal

if (place_meeting(x, y, obj_animal) && vsp > 0)
{
	var target = instance_place(x, y, obj_animal);
	with (target)
	{
		controls_enabled = true;
		layer = layer_get_id("player");
	}
	
	controls_enabled = false;
	layer = layer_get_id("animals");
}