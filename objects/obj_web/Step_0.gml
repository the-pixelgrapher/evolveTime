// If the web collides with a solid
if place_meeting(x,y,obj_solid)
{
	// Store the ID of the solid
	var this = instance_place(x,y,obj_solid)
	// Check if its outside the bounds of the room
	if (this.x < 0 || this.x > room_width || this.y < 0 || this.y > room_height)
	{
		// Go commit die
		instance_destroy()
	}
	// Successful collision, change the sprite and stop moving.
	sprite_index = spr_web
	speed = 0;
	// If not grid snapped
	if !place_snapped(32,32)
	{
		// Snap it!
		move_snap(32,32)
	}
}

// If the web collides with another web
if place_meeting(x,y,obj_web)
{
	sprite_index = spr_web
	speed = 0;
	// If not grid snapped
	if !place_snapped(32,32)
	{
		// Snap it!
		move_snap(32,32)
	}
}

	