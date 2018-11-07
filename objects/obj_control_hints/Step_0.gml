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
	draw_alpha[0] = lerp(draw_alpha[0], show_controls[0], 0.2);
	
	
	if (draw_alpha[0] <= 0 && controls_shown[1])
	{
		show_controls[1] = true;
	}
	if (key_up_p)
	{
		controls_shown[1] = true;
		show_controls[1] = false;
	}
	draw_alpha[1] = lerp(draw_alpha[1], show_controls[1], 0.2);
	
}