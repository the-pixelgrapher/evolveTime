// Breaking Breakable Blocks

// temporary before it's actually used so I can still test other things...
// vvvvvvv
var can_break = true;
// ^^^^^^^

if (place_meeting(x + hsp, y, obj_breakable_block)) && can_break == true
{
	var this_block = instance_place(x + hsp, y, obj_breakable_block);
	instance_destroy(this_block)
	/*
	var this_block = instance_place(x + hsp, y, obj_breakable_block);
	with (this_block)
	{
		instance_destroy();
	}
	*/
}
else
{
	
}