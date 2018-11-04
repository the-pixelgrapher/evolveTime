draw_set_font(fnt_level_num);
draw_set_valign(1);
draw_set_halign(1);
draw_set_color($52453D);

var rs = floor(select/7),
	xs = (select * 128) - (rs * 896) + x,
	ys = rs * 128 + y;


// ---- DRAW LEVEL SELECTION GRID ----
for (var i = 0; i < 14; i++)
{
	var rn = floor(i / 7),					//row number
		xo = (i * 128) - (rn * 896) + x,	//x origin pint
		yo = rn * 128 + y;					//y origin point
	
	draw_sprite_ext(spr_level_back,0,xo,yo,1,1,0, c_white, 1);
	//draw_sprite_ext(spr_level_back,0,xo,yo,1,1,0, $52453D, 1);
	
	draw_text(xo, yo + 1, i + 1);
	
	draw_sprite(spr_level_select_outline, 0, xs, ys);

}
