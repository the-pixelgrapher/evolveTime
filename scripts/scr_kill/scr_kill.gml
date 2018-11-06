// Kill animal

if (collisons && !global.level_complete)
{
	scr_screen_shake(10,20)
	collisons = false;
	layer = layer_get_id("game");
	vsp = -7.5;
	
	if (!collisons)
	{
		hsp = 2 * sign(hsp);
	}
	
	global.isDead = true;
	obj_game_controller.time_steps = 0;
}