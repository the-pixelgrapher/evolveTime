//draw_self();
draw_sprite_ext(sprite_index, image_index, x , y, draw_xscale*image_xscale, draw_yscale, image_angle, image_blend, image_alpha);
// Flip sprite based on walk direction
if (hsp > 0)
{
	image_xscale = 1;
	facing_right = true;
}
else if (hsp < 0)
{
	image_xscale = -1;
	facing_right = false;
}

// Draw arrow above controlled character
if (controls_enabled)
{
	
	draw_sprite(spr_indicator, 0, x, y - 42);
	image_speed = 1;
	sprite_index = spr_player_salamander_blob_fire;
	if (hsp == 0 || !grounded)
	{
		image_index = 0;
	}
	/*if (on_fire)
	{
		draw_sprite_ext(spr_fire, index, x - 16, y - 31, 0.5, 0.5, 0, c_white, 1);
	}*/
}