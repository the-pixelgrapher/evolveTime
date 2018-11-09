draw_set_font(fnt_menu);
draw_set_halign(1);
draw_set_valign(0);
draw_set_color($52453D);
draw_set_alpha(1);

for (var i = 0; i < 4; i++)
{
	var yy = i * 60;
	
	if (i = 0) {var item = "start";}
	if (i = 1) {var item = "level selection"}
	if (i = 2) {var item = "controls"}
	if (i = 3) {var item = "exit"}
	
	if (select = i)
	{
		draw_sprite(spr_menu_select, 0, 460, y + yy);
		draw_set_color(c_white);
		draw_text(room_width/2, y + 15 + yy, item);
		draw_sprite(menu_sprite[i], image_index, room_width/2, 624);
	}
	else 
	{
		draw_set_color($52453D);
		draw_text(room_width/2, y + 15 + yy, item);
	}
}

if (controls_screen)
{
	draw_sprite(spr_controls_back, 0, 400, 120);
	
	draw_sprite(spr_key_left, index_key, 489, 284);
	draw_sprite(spr_key_right, index_key, 538, 284);
	draw_sprite(spr_key_space, index_key, 640, 284);
	draw_sprite(spr_key_shift, index_key, 764, 284);
	
	draw_sprite(spr_key_left, index_key, 489, 432);
	draw_sprite(spr_key_ability, index_key, 545, 432);
	draw_sprite(spr_key_right, index_key, 601, 432);
	
	draw_sprite(spr_key_up, index_key, 735, 408);
	draw_sprite(spr_key_left, index_key, 679, 448);
	draw_sprite(spr_key_ability, index_key, 735, 448);
	draw_sprite(spr_key_right, index_key, 791, 448);
}
