scr_controls();

if (room = rm_level_01_B && obj_game_controller.time_steps > 120)
{
	if (controls_shown[0] == false)
	{
		show_controls[0] = true;
	}
	
	if (key_left_p || key_right_p)
	{
		controls_shown[0] = true;
		show_controls[0] = false;
	}
	
	draw_alpha = lerp(draw_alpha, show_controls[0], 0.2);
}