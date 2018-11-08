if (draw_alpha > 0)
{
	draw_set_alpha(draw_alpha * 0.1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, 1280, 720, 0);
	
	draw_set_alpha(draw_alpha);
	draw_sprite(spr_pause_menu_back, 0, 400, y + 120);
	//draw_sprite(spr_level_select_outline, 0, 640, y + 223)
	
	draw_set_color($52453D);
	draw_set_font(fnt_level_num);
	draw_set_halign(1);
	draw_set_valign(1);
	draw_text(640, y + 224, global.level);
	
	draw_set_font(fnt_menu);
	draw_set_halign(1);
	draw_set_valign(0);
	draw_set_color($52453D);

	for (var i = 0; i < 4; i++)
	{
		var yy = i * 60;
	
		if (i = 0)
		{
			if (global.level_complete = true)
			{
				var item = "next level";
			}
			else
			{
				var item = "continue";
			}
		}
		if (i = 1) {var item = "level selection"}
		if (i = 2) {var item = "controls"}
		if (i = 3) {var item = "main menu"}
	
		if (select = i)
		{
			draw_sprite(spr_menu_select, 0, 460, y + yy + 296);
			draw_set_color(c_white);
			draw_text(1280/2, y + 16 + yy + 295, item);
		}
		else 
		{
			draw_set_color($52453D);
			draw_text(1280/2, y + 16 + yy + 295, item);
		}
	}
	
}

if (controls_screen)
{
	draw_sprite(spr_controls_back, 0, 400, 120);
	
	draw_sprite(spr_key_left, index_key, 489, y + 284);
	draw_sprite(spr_key_right, index_key, 538, y + 284);
	draw_sprite(spr_key_space, index_key, 640, y + 284);
	draw_sprite(spr_key_shift, index_key, 764, y + 284);
	
	draw_sprite(spr_key_left, index_key, 489, y + 432);
	draw_sprite(spr_key_ability, index_key, 545, y + 432);
	draw_sprite(spr_key_right, index_key, 601, y + 432);
	
	draw_sprite(spr_key_up, index_key, 735, y + 408);
	draw_sprite(spr_key_left, index_key, 679, y + 448);
	draw_sprite(spr_key_ability, index_key, 735, y + 448);
	draw_sprite(spr_key_right, index_key, 791, y + 448);
}


draw_set_alpha(1);