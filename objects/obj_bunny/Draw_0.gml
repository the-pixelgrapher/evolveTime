//draw_self();
draw_sprite_ext(sprite_index, image_index, x , y, draw_xscale*image_xscale, draw_yscale, image_angle, image_blend, image_alpha);
// Flip sprite based on walk direction
if (hsp > 0)
{
	image_xscale = 1;
}
else if (hsp < 0)
{
	image_xscale = -1;
}

// Draw arrow above controlled character
if (controls_enabled)
{
	draw_sprite(spr_indicator, 0, x, y - 48);
}