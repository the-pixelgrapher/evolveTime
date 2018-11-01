// Breaking Breakable Blocks

if (place_meeting(x + sign(hsp), y, obj_breakable_block))
{
	var this_block = instance_place(x + sign(hsp), y, obj_breakable_block);
	instance_destroy(this_block);
}