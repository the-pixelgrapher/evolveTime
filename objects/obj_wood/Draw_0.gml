if (on_fire)
{
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_red, 1);
	draw_sprite(spr_fire, index, x, y);
}
else
{
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, 1);
}