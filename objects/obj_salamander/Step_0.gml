scr_player(); // Player control script

scr_move(hsp); // General physics script

// Change sprite depending on player control
if (controls_enabled)
{
	if (on_fire)
	{
		scr_ignite(); // Ignite flammable objects
		index += 10/60;
	}
	sprite_index = spr_player_salamander_blob;	
}
else
{
	sprite_index = spr_salamander;
	
	// Amimation
	image_speed = 1;
	
	if (hsp == 0 || !grounded)
	{
		image_index = 0;
	}
}