// Transfer control to another animal

if (capture_cooldown > 0)
{
	capture_cooldown -=1; 	
}

if (place_meeting(x, y, obj_animal) && vsp > 0 && key_shift == 0 && object_index == obj_slimeyboi)
{
	
	var target = instance_place(x, y, obj_animal);
	var did_capture = false;
	
	with (target)
	{
		if (capture_cooldown <= 0)
		{
			controls_enabled = true;
			layer = layer_get_id("player");
			did_capture = true;
		}
	}
	
	if (did_capture)
	{
		controls_enabled = false;
		//layer = layer_get_id("animals");
		instance_destroy();
	}
}

// Release control

if (object_index != obj_slimeyboi && controls_enabled)
{
	if (key_shift)
	{
		var xs = image_xscale;
		
		with (instance_create_layer(x, y, "player", obj_slimeyboi))
		{
			//queue_jump = 1;
			vsp = jump_height * -1 * sign(global.grv);
			image_xscale = xs;
		}
		
		//capture_cooldown = 60;
		walksp *= image_xscale;
		layer = layer_get_id("animals");
		controls_enabled = false;
	}
	
}