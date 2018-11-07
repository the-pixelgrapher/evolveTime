//Climb State

// If not touching a web or controls not enabled, resume normal state
if(!place_meeting(x, y, object_climb) || !controls_enabled)        
{                                                                  
    state = PLAYER_STATE.normal;
    exit;
}

// Initializing movement so the player doesnt fall if not moving
hsp = 0;                                                         
vsp = 0;                                                         

// ~~ Press ctrl to drop off the web ~~
if(key_ctrl)
{
	state = PLAYER_STATE.normal;
	exit;
}

// ~~ Web Movement ~~ 
if(controls_enabled && place_meeting(x,y, object_climb))                                                  
{              
	// ~~ LEFT ~~
    if(key_left)
    {
        hsp -= climb_speed;
    }
	// ~~ RIGHT ~~
	if(key_right)
    {
        hsp += climb_speed;
    }
	// ~~ UP ~~
	if(key_w)
	{                                                                 
		vsp -= climb_speed;                       
	}
	// ~~ DOWN ~~
	if(key_s)
	{
		vsp += climb_speed;
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

// ~~ Recreate movement / collision system within this climbing state ~~
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


