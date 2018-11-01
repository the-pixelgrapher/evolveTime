draw_self();

// Flip sprite based on walk direction
if (hsp > 0)
{
	image_xscale = 1;
	projectile_dir = 0;
}
else if (hsp < 0)
{
	image_xscale = -1;
	projectile_dir = 180;
}

// Draw arrow above controlled character
if (controls_enabled)
{
	draw_sprite(spr_indicator, 0, x, y - 50);
}