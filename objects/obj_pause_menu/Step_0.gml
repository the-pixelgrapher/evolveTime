if (global.is_paused)
{
	y = lerp(y, 0, 0.15);
	draw_alpha = lerp(draw_alpha, 1, 0.25);
	
	scr_controls();

	select -= key_up_p;
	select += key_down_p;
	if select > 3 {select = 0;}
	if select < 0 {select = 3;}

	if (key_up_p || key_down_p)
	{
		scr_audio("tap");
	}

	if (key_act_p)
	{
		scr_audio("select");
	
		if (select == 0)
		{
			if (global.level_complete = true)
			{
				room_goto_next();
			}
			else
			{
				global.is_paused = false;
			}
		}
	
		if (select == 1)
		{
			room_goto(rm_level_select);
		}
	
		if (select == 3)
		{
			room_goto(rm_main_menu);
		}
	}
}
else
{
	y = lerp(y, -64, 0.15);
	draw_alpha = lerp(draw_alpha, 0, 0.25);
	
	
}

