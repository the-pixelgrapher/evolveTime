// Reset game

if (keyboard_check_pressed(vk_backspace)) {
	room_restart();
}

if (keyboard_check_pressed(vk_tab)) {
	global.grv *= -1;
}