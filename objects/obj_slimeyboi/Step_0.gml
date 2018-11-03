scr_player(); // Player control script

scr_move(hsp); // General physics script

// Amimation
image_speed = 1;

if (hsp == 0 || !grounded)
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
	draw_xscale = lerp(draw_xscale, 1, .1);
	draw_yscale = lerp(draw_yscale, 1, .1);
	
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