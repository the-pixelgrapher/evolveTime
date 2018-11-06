scr_player(); // Player control script
scr_move(hsp); // General physics script
scr_swim();

// Change sprite depending on player control
if (controls_enabled)
{
	if (hsp == 0 || !grounded)
	{
		image_index = 0;
	}
	sprite_index = spr_player_turtle_blob;	
}
else
{
	sprite_index = spr_turtle_idle;
	if(hsp > 0 || hsp < 0)
		{
			sprite_index = spr_turtle;
		}
}



if(controls_enabled)
{
	if (key_up && !grounded && !place_meeting(x,y,obj_fluid))
	{
		draw_yscale = 1.2;
		draw_xscale = 0.83;
	}
	draw_xscale = lerp(draw_xscale, 1, .15);
	draw_yscale = lerp(draw_yscale, 1, .15);


	if (place_meeting(x,y+1,obj_solid) && !place_meeting(x,yprevious +1, obj_solid))
	{
		draw_yscale = .75;
		draw_xscale = 1.15;
	}
}
else
{
	draw_yscale = 1;
	draw_xscale = 1;
}