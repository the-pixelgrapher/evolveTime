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
	draw_sprite(spr_indicator, 0, x, y - 46);
	image_speed = 1;
	sprite_index = spr_player_salamander_blob_fire;
	if (hsp == 0 && can_shoot_flame)
	{
	sprite_index = spr_player_salamander_blob_fire_idle;	
	}
	if (hsp == 0 && !can_shoot_flame || !grounded && !can_shoot_flame)
	{
	image_index = 0;
	}
}