// Kill animal

if (collisons)
{
	scr_screen_shake(10,20)
	collisons = false;
	layer = layer_get_id("game");
	vsp = -7.5;
	
	if (!collisons)
	{
		hsp = 2 * sign(hsp);
	}
}