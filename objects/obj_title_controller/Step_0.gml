scr_controls();

select -= key_up_p;
select += key_down_p;
if select > 3 {select = 0;}
if select < 0 {select = 3;}

if (key_act_p)
{
	if (select == 0)
	{
		room_goto(1);
	}
	
	if (select = 3)
	{
		game_end();
	}

	
}
