// Transfer control to another animal on landing

if (place_meeting(x, y, obj_animal) && vsp > 0 && key_shift == 0 && object_index == obj_slimeyboi)
{
	// Get ID of colliding animal
	var target = instance_place(x, y, obj_animal);
	
	// Whether the capture was successful
	var did_capture = false;
	
	with (target)
	{
		// Capture animal if cooldown has expired
		if (capture_cooldown <= 0)
		{
			controls_enabled = true;
			did_capture = true;
			layer = layer_get_id("player"); // Move to front layer
		}
	}
	
	// Destroy player character if capture was successful
	if (did_capture)
	{
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
			vsp = jump_height * -1 * sign(global.grv); // Jump on release
			image_xscale = xs; // Retain sprite flip of player on release
		}
		
		capture_cooldown = 90; // Num steps to not allow recapture after release
		walksp *= image_xscale;
		layer = layer_get_id("animals");
		controls_enabled = false;
	}	
}