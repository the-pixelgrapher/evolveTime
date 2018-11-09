draw_set_alpha(1);

draw_set_font(fnt_level_num);
draw_set_valign(1);
draw_set_halign(1);
draw_set_color($52453D);

var rl = 8;
var rs = floor(select / rl),					//row length
	xs = (select * 128) - (rs * rl * 128) + x,
	ys = rs * 128 + y;
	
	
xs_lerp = lerp(xs_lerp, xs, 0.25);
ys_lerp = lerp(ys_lerp, ys, 0.25);


// ---- DRAW LEVEL SELECTION GRID ----
for (var i = 0; i < 16; i++)
{
	var rn = floor(i / rl),						//row number
		xo = (i * 128) - (rn * rl * 128) + x,	//x origin pint
		yo = rn * 128 + y;						//y origin point
	

	draw_sprite(spr_level_back,0,xo,yo);
	
	if (global.level_state[i] = 2)
	{
		draw_sprite(spr_tick, 0 , xo+48, yo-48);
	}
	
	draw_sprite(spr_level_select_outline, 0, xs, ys);
	
	if (global.level_state[i] >= 1)
	{
		draw_set_alpha(1);
	}
	else
	{
		draw_set_alpha(0.67);
	}
	draw_text(xo, yo + 1, i + 1);
	draw_set_alpha(1);
		
}


if (rs < 1)
{
	draw_sprite_ext(spr_thumb_back, 0, xs_lerp, ys_lerp - 64, 1, 1, 0, c_white, 1);
		
	if (select < room_last - room - 2)
	{
		draw_sprite_ext(spr_level_thumb, select, xs_lerp, ys_lerp - 143, 1, 1, 0, c_white, 1);
	}
}
else
{
	draw_sprite_ext(spr_thumb_back, 0, xs_lerp, ys_lerp + 64, 1, -1, 0, c_white, 1);
		
	if (select < room_last - room - 2)
	{
		draw_sprite_ext(spr_level_thumb, select, xs_lerp, ys_lerp + 143, 1, 1, 0, c_white, 1);
	}
}