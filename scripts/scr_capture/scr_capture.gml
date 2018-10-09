// Transfer control to another animal

if (place_meeting(x, y, obj_animal) && vsp > 0 && key_shift == 0 && object_index == obj_slimeyboi)
{
	var target = instance_place(x, y, obj_animal);
	with (target)
	{
		controls_enabled = true;
		layer = layer_get_id("player");
	}
	
	controls_enabled = false;
	//layer = layer_get_id("animals");
	instance_destroy();
}

// Release control

if (object_index != obj_slimeyboi && controls_enabled)
{
	if (key_shift && key_up)
	{
		
		with (instance_create_layer(x, y, "player", obj_slimeyboi))
		{
			queue_jump = 1;
			vsp = jump_height * -1;
		}
		
		walksp *= image_xscale;
		layer = layer_get_id("animals");
		controls_enabled = false;
	}
	
}