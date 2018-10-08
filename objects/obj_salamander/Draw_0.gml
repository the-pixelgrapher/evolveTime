
if (hsp > 0)
{
	image_xscale = 1;
}
else if (hsp < 0)
{
	image_xscale = -1;
}

if (controls_enabled)
{
	draw_sprite(spr_indicator, 0, x, y - 42);
	draw_sprite(spr_player_salamander_blob, 0, x, y);
}
else
{
	draw_self();
}
