// Pushing blocks


if (place_meeting(x + hsp, y, obj_crate))
{
	var this = id
	
	var this_crate = instance_place(x + hsp, y, obj_crate);
	with (this_crate)
	{
		scr_move(this.hsp/2);
	}
	hsp /= 2;
}
else
{
	
}