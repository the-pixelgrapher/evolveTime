scr_player(); // Player control script
scr_controls();
scr_move(hsp); // General physics script

// Change sprite depending on player control
if (controls_enabled)
{
	sprite_index = spr_player_cat_blob;	
}
else
{
	sprite_index = spr_bunny;
}

// Amimation
image_speed = 1;

if (hsp == 0)
{
	image_index = 0;
}

if(controls_enabled)
{
	if (key_up && !grounded)
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