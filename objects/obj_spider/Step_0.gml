scr_controls();
scr_player();

script_execute(state);

/*
var move = (key_right - key_left) * controls_enabled;
	hsp = move * walksp;
scr_move(hsp); // General physics script
*/

// Change sprite depending on player control
/*
if (controls_enabled)
{
	sprite_index = spr_spider;	
}
else
{
	sprite_index = spr_spider;
}
*/

// Amimation
image_speed = 1;
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

	if (hsp == 0 && vsp == 0)
	{
		image_index = 0;
	}

	if (key_ctrl && can_shoot_web && grounded)
	{
		can_shoot_web = false;
		projectile = instance_create_layer(x,y,"ins_env_collision",obj_web);	
		projectile.speed = projectile_speed;
		projectile.direction = projectile_dir;
		alarm[0] = 60;
	}
}