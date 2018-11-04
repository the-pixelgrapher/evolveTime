// Reset game

if (keyboard_check_pressed(vk_backspace)) {
	room_restart();
}

if (keyboard_check_pressed(vk_tab)) {
	global.grv *= -1;
}

if (global.level_complete)
{
	y = lerp(y, 0, 0.15);
	if (key_act_r)
	{
		continue_active = 1;	
	}
}

scr_controls();

if (continue_active && continue_timer < 1 && key_act && global.level_complete)
{
	continue_timer += 1/60;
}

if (key_act_r && continue_timer < 1)
{
	continue_timer = 0;
}

if (continue_timer >= 1 && room_next(room) != -1 && alarm[0] == -1)
{
	alarm[0] = room_speed * 1/6;
}