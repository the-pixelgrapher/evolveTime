scr_player(); // Player control script

scr_move(hsp); // General physics script

// Change sprite depending on player control

if(!controls_enabled)
{
	sprite_index = spr_salamander;
	
	// Amimation
	image_speed = 1;
	
	if (hsp == 0 || !grounded)
	{
		sprite_index = spr_salamander_idle;
	}
}
if(!can_shoot_flame)
{
	sprite_index = spr_player_salamander_blob;	
}
if(controls_enabled)
{
	if (key_up && !grounded)
	{
		draw_yscale = 1.1;
		draw_xscale = 0.90;
	}
	draw_xscale = lerp(draw_xscale, 1, .15);
	draw_yscale = lerp(draw_yscale, 1, .15);


	if (place_meeting(x,y+1,obj_solid) && !place_meeting(x,yprevious +1, obj_solid))
	{
		draw_yscale = .75;
		draw_xscale = 1.15;
	}
	
	if (key_ability && can_shoot_flame)
	{
		scr_audio("ignite");
		can_shoot_flame = false;
		alarm[0] = 30;
		if(facing_right)
		{
		scr_effect_flame( 1, x+20, y-10, 0);
		}
		else
		scr_effect_flame( 1, x-20, y-10, 0);
	}
	
}
else
{
	draw_yscale = 1;
	draw_xscale = 1;
}