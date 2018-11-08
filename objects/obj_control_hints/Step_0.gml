scr_controls();

if (obj_game_controller.time_steps > 120)
{
	switch (room)
	{
		#region // level 01: movement
		case rm_level_01_B:
			if (global.controls_shown[0] == false)
			{
				show_controls[0] = true;
			}
			if (key_left_p || key_right_p)
			{
				global.controls_shown[0] = true;
				show_controls[0] = false;
			}
			draw_alpha[0] = lerp(draw_alpha[0], show_controls[0], 0.2);
	
	
			if (draw_alpha[0] <= 0 && global.controls_shown[1] == false)
			{
				show_controls[1] = true;
			}
			if (key_jump && draw_alpha[0] <= 0 && global.controls_shown[1] == false)
			{
				global.controls_shown[1] = true;
				show_controls[1] = false;
			}
			draw_alpha[1] = lerp(draw_alpha[1], show_controls[1], 0.2);
			break;
		#endregion;
			
		#region // level 02: shoot fire
		case rm_level_02_Sa:
			if (global.controls_shown[2] == false && obj_salamander.controls_enabled)
			{
				show_controls[2] = true;
			}
			if (key_ability)
			{
				global.controls_shown[2] = true;
				show_controls[2] = false;
			}
			draw_alpha[2] = lerp(draw_alpha[2], show_controls[2], 0.2);
			break;
		#endregion
		
		#region //level 4: release
		case rm_level_04_B_T_Sa:
			if (global.controls_shown[3] == false && obj_turtle.x < 512)
			{
				show_controls[3] = true;
			}
			if (key_shift)
			{
				global.controls_shown[3] = true;
				show_controls[3] = false;
			}
			draw_alpha[3] = lerp(draw_alpha[3], show_controls[3], 0.2);
			break;
		#endregion
		
		#region //level 5: focus
		case rm_level_05_T_Sa:
			if (global.controls_shown[4] == false)
			{
				show_controls[4] = true;
			}
			if (keyboard_check_pressed(ord("E")) || obj_game_controller.time_steps > 60 * 6)
			{
				global.controls_shown[4] = true;
				show_controls[4] = false;
			}
			draw_alpha[4] = lerp(draw_alpha[4], show_controls[4], 0.2);
			break;
		#endregion
		
		#region //level 8: shoot web
		case rm_level_08_Sp:
			if (global.controls_shown[5] == false && obj_spider.controls_enabled)
			{
				show_controls[5] = true;
			}
			if (key_ability)
			{
				global.controls_shown[5] = true;
				show_controls[5] = false;
			}
			draw_alpha[5] = lerp(draw_alpha[5], show_controls[5], 0.2);
			break;
		#endregion
		
		#region //level 13: dig dig dig!
		case rm_level_13_T_Sa_M:
			if (global.controls_shown[6] == false && obj_mole.controls_enabled)
			{
				show_controls[6] = true;
			}
			if (key_ability)
			{
				global.controls_shown[6] = true;
				show_controls[6] = false;
			}
			draw_alpha[6] = lerp(draw_alpha[6], show_controls[6], 0.2);
			break;
		#endregion
	
	}
}