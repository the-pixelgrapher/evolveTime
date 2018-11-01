// Reset game

if (keyboard_check_pressed(vk_backspace)) {
	room_restart();
}

if (keyboard_check_pressed(vk_tab)) {
	global.grv *= -1;
}

if (global.level_complete && alarm[0] == -1)
{
	alarm[0] = room_speed * 2;
}