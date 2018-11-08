scr_controls();
scr_player();
script_execute(state);

// Change sprite depending on player control
image_speed = 1;

if (controls_enabled)
{
	if (hsp == 0 && vsp == 0)
	{
		image_index = 0;
	}
	sprite_index = spr_player_spider_blob;	
	if (key_up && !grounded)
	{
		draw_yscale = 1.05;
		draw_xscale = 0.95;
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
	sprite_index = spr_spider_idle;
	if(hsp > 0 || hsp < 0)
		{
			sprite_index = spr_spider;
		}
	draw_yscale = 1;
	draw_xscale = 1;
}

if(controls_enabled)
{
	if (key_up)
	{
		projectile_dir = 90;
	}
	if (key_down)
	{
		projectile_dir = 270;
	}
	if (key_ability && can_shoot_web && grounded)
	{
		scr_audio("shoot");
		
		can_shoot_web = false;
		projectile = instance_create_layer(x,y-30,"ins_env_collision",obj_web);	
		projectile.speed = projectile_speed;
		projectile.direction = projectile_dir;
		projectile.image_angle = projectile_dir;
		alarm[0] = 30;
	}
}