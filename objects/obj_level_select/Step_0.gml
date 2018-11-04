scr_controls();

select -= key_left_p;
select += key_right_p;
select -= key_up_p * 7;
select += key_down_p * 7;
if (select > 13) {select = 0;}
if (select < 0)  {select = 13;}

if (key_act_p)
{
	if (room_exists(room + select + 1))
	{
		room_goto(room + select + 1);
	}
	
}