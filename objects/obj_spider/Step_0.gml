scr_controls();
scr_player();
script_execute(state);

// Change sprite depending on player control
image_speed = 1;

if (controls_enabled)
{
	if (hsp == 0 || !grounded)
	{
		image_index = 0;
	}
	sprite_index = spr_player_spider_blob;	
}
else
{
	sprite_index = spr_spider_idle;
	if(hsp > 0 || hsp < 0)
		{
			sprite_index = spr_spider;
		}
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
		can_shoot_web = false;
		projectile = instance_create_layer(x,y-30,"ins_env_collision",obj_web);	
		projectile.speed = projectile_speed;
		projectile.direction = projectile_dir;
		projectile.image_angle = projectile_dir;
		alarm[0] = 30;
	}
}