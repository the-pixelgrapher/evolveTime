 // Control Hint Logic
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
	draw_sprite(spr_key_left, image_index, obj_slimeyboi.x - 25, obj_slimeyboi.y - 78);
	draw_sprite(spr_key_right, image_index, obj_slimeyboi.x + 24, obj_slimeyboi.y - 78);
	
	draw_set_font(fnt_hints);
	draw_set_halign(1);
	draw_set_valign(0);
	draw_set_color($52453D);
	draw_text(obj_slimeyboi.x, obj_slimeyboi.y - 125, "jump");
	
	draw_set_alpha(1);
}