scr_controls();

//image_index += 1/60;

if (!controls_screen)
{
	select -= key_up_p;
	select += key_down_p;
	if select > 3 {select = 0;}
	if select < 0 {select = 3;}
	
	if (key_up_p || key_down_p)
	{
		scr_audio("tap");
	}
}


if (key_act_p)
{
	scr_audio("select");
	
	if (select == 0)
	{
		room_goto(room + 2);
	}
	
	if (select == 1)
	{
		room_goto(room + 1);
	}
	
	if (select == 2)
	{
		controls_screen = !controls_screen;
	}
	
	if (select == 3)
	{
		game_end();
	}
}

if (keyboard_check(vk_escape))
{
	controls_screen = 0;
}


