draw_set_font(fnt_menu);
draw_set_halign(1);
draw_set_valign(0);
draw_set_color($52453D);

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
		draw_text(room_width/2, y + 16 + yy, item);
		draw_sprite(menu_sprite[i], image_index, room_width/2, 648);
	}
	else 
	{
		draw_set_color($52453D);
		draw_text(room_width/2, y + 16 + yy, item);
	}
}
