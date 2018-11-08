scr_controls();
time_steps += 1;

// Reset game

if (!global.level_complete && reset_timer < 1 && time_steps > 60) 
{
	if (global.is_dead)
	{
		reset_timer += 1/60;
	}
	else if (keyboard_check(ord("R")))
	{
		reset_timer += 1/global.reset_timer_length;
	}
}

if (!max(keyboard_check(ord("R")), global.is_dead) && reset_timer < 1)
{
	reset_timer = lerp(reset_timer, 0, 0.25);
}

if (reset_timer >= 1 && alarm[1] == -1)
{
	alarm[1] = room_speed * 1/6;
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
	
	if (!complete_sound_played)
	{
		scr_audio("complete");
		complete_sound_played = true;
	}
}


// Continue to next level

if (continue_active && continue_timer < 1 && key_act && global.level_complete)
{
	continue_timer += 1/40;
}

if (!key_act && continue_timer < 1)
{
	continue_timer = lerp(continue_timer, 0, 0.25);
}

if (continue_timer >= 1 && room_next(room) != -1 && alarm[0] == -1)
{
	alarm[0] = room_speed * 1/6;
}