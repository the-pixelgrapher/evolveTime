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


if (keyboard_check_pressed(vk_pageup) && sign(global.grv) == 1) {
	global.grv *= -1;
	scr_audio("music_level2")
}
if (keyboard_check_pressed(vk_pagedown) && sign(global.grv) == -1) {
	global.grv *= -1;
	scr_audio("music_level")
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
	
	global.level_state[global.level - 1] = 2;
	if (global.level < 16 && global.level_state[global.level] = 0)
	{
		global.level_state[global.level] = 1;	
	}
	scr_save();
}


// Continue to next level

if (continue_active && continue_timer < 1 && key_act && global.level_complete && !global.is_paused)
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