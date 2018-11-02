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

if(controls_enabled)
{
	if (key_up && !grounded)
	{
		draw_yscale = 1.5;
		draw_xscale =.75;
	}
	draw_xscale = lerp(draw_xscale, 1, .1);
	draw_yscale = lerp(draw_yscale, 1, .1);


	if (place_meeting(x,y+1,obj_solid) && !place_meeting(x,yprevious +1, obj_solid))
	{
		draw_yscale = .75;
		draw_xscale = 1.15;
	}
}
else
{
	draw_yscale = 1;
	draw_xscale = 1;
}