// keyboard control setup

key_left = max( keyboard_check(vk_left), keyboard_check(ord("A")) );
key_right = max( keyboard_check(vk_right), keyboard_check(ord("D")) );
key_jump = max( keyboard_check_pressed(vk_space),keyboard_check_pressed(vk_up), keyboard_check(ord("W")) );