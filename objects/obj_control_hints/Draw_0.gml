// Control Hint draw
 
switch (room)
{
	#region // level 01
	case rm_level_01_B:
		if (instance_exists(obj_slimeyboi) && draw_alpha[0] > 0)
		{
			draw_set_alpha(draw_alpha[0]);
	
			draw_sprite(spr_control_back, 0, obj_slimeyboi.x, obj_slimeyboi.y - 42);
			draw_sprite(spr_key_left, image_index, obj_slimeyboi.x - 25, obj_slimeyboi.y - 78);
			draw_sprite(spr_key_right, image_index, obj_slimeyboi.x + 24, obj_slimeyboi.y - 78);
	
			draw_set_font(fnt_hints);
			draw_set_halign(1);
			draw_set_valign(0);
			draw_set_color($52453D);
			draw_text(obj_slimeyboi.x, obj_slimeyboi.y - 125, "movement");
	
			draw_set_alpha(1);
		}

		if (instance_exists(obj_slimeyboi) && draw_alpha[1] > 0)
		{
			draw_set_alpha(draw_alpha[1]);
	
			draw_sprite(spr_control_back, 0, obj_slimeyboi.x, obj_slimeyboi.y - 42);
			draw_sprite(spr_key_space, image_index, obj_slimeyboi.x, obj_slimeyboi.y - 78);
	
			draw_set_font(fnt_hints);
			draw_set_halign(1);
			draw_set_valign(0);
			draw_set_color($52453D);
			draw_text(obj_slimeyboi.x, obj_slimeyboi.y - 125, "jump");
	
			draw_set_alpha(1);
		}
		break;
		#endregion
	
	#region // level 02
	case rm_level_02_Sa:
		if (instance_exists(obj_salamander) && draw_alpha[2] > 0)
		{
			draw_set_alpha(draw_alpha[2]);
	
			draw_sprite(spr_control_back, 0, obj_salamander.x, obj_salamander.y - 46);
			draw_sprite(spr_key_ability, image_index, obj_salamander.x, obj_salamander.y - 82);
	
			draw_set_font(fnt_hints);
			draw_set_halign(1);
			draw_set_valign(0);
			draw_set_color($52453D);
			draw_text(obj_salamander.x, obj_salamander.y - 129, "shoot fire");
	
			draw_set_alpha(1);
		}
		break;
	#endregion
		
	#region // level 04
	case rm_level_04_B_T_Sa:
		if (instance_exists(obj_turtle) && draw_alpha[3] > 0)
		{
			draw_set_alpha(draw_alpha[3]);
	
			draw_sprite(spr_control_back, 0, obj_turtle.x, obj_turtle.y - 42);
			draw_sprite(spr_key_shift, image_index, obj_turtle.x, obj_turtle.y - 78);
	
			draw_set_font(fnt_hints);
			draw_set_halign(1);
			draw_set_valign(0);
			draw_set_color($52453D);
			draw_text(obj_turtle.x, obj_turtle.y - 125, "release");
	
			draw_set_alpha(1);
		}
		break;
	#endregion
	
	#region // level 05
	case rm_level_05_T_Sa:
		if (instance_exists(obj_camera_target) && draw_alpha[4] > 0)
		{
			draw_set_alpha(draw_alpha[4]);
	
			draw_sprite(spr_control_back, 0, obj_camera_target.x, obj_camera_target.y - 42);
			draw_sprite(spr_key_E, image_index, obj_camera_target.x, obj_camera_target.y - 78);
	
			draw_set_font(fnt_hints);
			draw_set_halign(1);
			draw_set_valign(0);
			draw_set_color($52453D);
			draw_text(obj_camera_target.x, obj_camera_target.y - 125, "focus!");
	
			draw_set_alpha(1);
		}
		break;
	#endregion
	
	#region // level 08
	case rm_level_08_Sp:
		if (instance_exists(obj_spider) && draw_alpha[5] > 0)
		{
			draw_set_alpha(draw_alpha[5]);
	
			draw_sprite(spr_control_back, 0, obj_spider.x, obj_spider.y - 53);
			draw_sprite(spr_key_ability, image_index, obj_spider.x, obj_spider.y - 89);
	
			draw_set_font(fnt_hints);
			draw_set_halign(1);
			draw_set_valign(0);
			draw_set_color($52453D);
			draw_text(obj_spider.x, obj_spider.y - 136, "shoot web");
	
			draw_set_alpha(1);
		}
		break;
	#endregion
	
	#region // level 13
	case rm_level_13_T_Sa_M:
		if (instance_exists(obj_mole) && draw_alpha[6] > 0)
		{
			draw_set_alpha(draw_alpha[6]);
	
			draw_sprite(spr_control_back, 0, obj_mole.x, obj_mole.y - 42);
			draw_sprite(spr_key_ability, image_index, obj_mole.x, obj_mole.y - 78);
	
			draw_set_font(fnt_hints);
			draw_set_halign(1);
			draw_set_valign(0);
			draw_set_color($52453D);
			draw_text(obj_mole.x, obj_mole.y - 125, "dig dig dig");
	
			draw_set_alpha(1);
		}
		break;
	#endregion
}
 


