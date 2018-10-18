// Kill animal
if (collisons)
{
	scr_screen_shake(8,15)
	collisons = false;
	layer = layer_get_id("game");
	vsp = -7.5;
	
	if (!collisons)
	{
		hsp = 2 * sign(hsp);
	}

}