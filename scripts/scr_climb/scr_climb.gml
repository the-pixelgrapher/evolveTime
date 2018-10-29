//Climb State

if(!place_meeting(x, y, object_climb))                             //If the player falls off the ladder then
{                                                                   //change back to the normal state.
    state = PLAYER_STATE.normal;
    exit;
}

hsp = 0;                                                         //If the user doesn't make any key presses
vsp = 0;                                                         //we don't want to move at all.

if(key_up && collision_line(bbox_left, bbox_top - 1,              //Like in the normal state, This collision
    bbox_right, bbox_top -1, object_climb, false, true) != noone)  //line checks across the top of the player
{                                                                   //mask to ensure he doesnt climb obove the
    vsp -= climb_speed;                                          //top of the ladder.
}
if(key_down)
{
    vsp += climb_speed;
}

if(vsp == 0)                                                     //Only allow horizontal movement when not
{                                                                   //climbing.
    if(key_left)
    {
        hsp -= climb_speed;
    }
    if(key_right)
    {
        hsp += climb_speed;
    }
}

if(vsp != 0)
{
    // climb animation
}
else if(hsp != 0)
{
    // traverse animation
}
else
{
    // idle animation
}

if (place_meeting(x, y + 1, obj_solid) && collisons) 
{
	grounded = true;
} 
else 
{
	grounded = false;
}

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_solid) && collisons)
{
	while(!place_meeting(x + sign(hsp), y, obj_solid))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_solid) && collisons)
{
	while(!place_meeting(x, y + sign(vsp), obj_solid))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


