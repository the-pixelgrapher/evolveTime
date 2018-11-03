if (place_meeting(x, y, obj_flammable))
{
	var this_block = instance_place(x, y, obj_flammable);
	with (this_block)
	{
		if (!on_fire)
		{
			on_fire = true;
		}
	}
}