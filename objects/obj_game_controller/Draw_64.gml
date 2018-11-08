//draw_text(64,64, global.level);

if (global.level_complete)
{
	draw_set_halign(1);
	draw_set_valign(0);
	draw_sprite(spr_complete_back, 0, 384, y + 190);
	draw_set_color($52453D);
	
	draw_set_font(fnt_level_num);
	draw_text(1280/2, y + 256, global.level);
	
	if (floor(continue_timer * 192) > 1)
	{
		if (continue_timer >= 1)
		{
			draw_set_color($05A1F0);
		}
		draw_rectangle(520, y + 465, floor(continue_timer * 240) + 520, y + 468, 0);
	}
}
draw_set_halign(0);

if (reset_timer > 0)
{
	draw_sprite(spr_reset_back, 0, 512, 592);
	draw_set_color($52453D);
	
	if (reset_timer >= 1)
		{
			draw_set_color($05A1F0);
		}
	if (floor(reset_timer * 192) > 1)
	{
		draw_rectangle(544, 636, floor(reset_timer * 192) + 544, 639, 0);
	}
}