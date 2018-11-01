draw_self();

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
	draw_sprite(spr_indicator, 0, x, y - 42);
	if (on_fire)
	{
		draw_sprite_ext(spr_fire, index, x - 16, y - 31, 0.5, 0.5, 0, c_white, 1);
	}
}