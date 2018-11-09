scr_controls();

select -= key_left_p;
select += key_right_p;
select -= key_up_p * 8;
select += key_down_p * 8;

if (select > global.level_unlocked + 0) {select = 0;}
if (select < 0)  {select = global.level_unlocked + 0;}



if (key_up_p || key_down_p || key_left_p || key_right_p)
{
	scr_audio("tap");
}

if (key_act_p)
{
	scr_audio("select");
	
	if (room_exists(room + select + 1))
	{
		room_goto(room + select + 1);
	}
	
}