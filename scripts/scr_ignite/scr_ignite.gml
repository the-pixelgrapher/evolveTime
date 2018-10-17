// Igniting flammable Blocks

if (place_meeting(x + sign(hsp), y, obj_flammable))
{
	var this_block = instance_place(x + hsp, y, obj_flammable);
	with (this_block)
	{
		on_fire = true;
	}
}