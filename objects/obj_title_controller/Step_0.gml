scr_controls();

//image_index += 1/60;

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
		room_goto(room + 2);
	}
	
	if (select == 1)
	{
		room_goto(room + 1);
	}
	
	if (select == 3)
	{
		game_end();
	}
}
