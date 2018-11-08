scr_controls();

if (obj_game_controller.time_steps > 120)
{
	switch (room)
	{
		case rm_level_01_B:
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
	
	
			if (draw_alpha[0] <= 0 && controls_shown[1] == false)
			{
				show_controls[1] = true;
			}
			if (key_jump && draw_alpha[0] <= 0 && controls_shown[1] == false)
			{
				controls_shown[1] = true;
				show_controls[1] = false;
			}
			draw_alpha[1] = lerp(draw_alpha[1], show_controls[1], 0.2);
			break;
			
		//case rm_level_01_B:
	
	}
}