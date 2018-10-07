// Breaking Breakable Blocks

// temporary to stop it throwing an error:
// vvvvvvv
var can_break = true;
// ^^^^^^^

if (place_meeting(x + hsp, y, obj_breakable_block)) && can_break == true
{
	var this_block = instance_place(x = hsp, y, obj_breakable_block);
	with (this_block)
	{
		instance_destroy();
	}
}
else
{
	
}