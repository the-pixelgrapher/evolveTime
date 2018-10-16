// Kill animal
if (collisons)
{
	collisons = false;
	layer = layer_get_id("game");
	vsp -= 8;
	
	if (!collisons)
	{
		hsp = 2 * sign(hsp);
	}

}