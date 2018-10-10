var hsp = argument[0];

// Basic collisions and gravity

// Calculate Movement
vsp = vsp + global.grv;

#region //  ---- COLLISIONS ----

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

// Avoid being stuck in ground
/*
var o = y
y += 1000;

if (position_meeting(x, 0, obj_solid))
{
	vsp += 1;
}

y -= 1000;
*/

y = y + vsp;

if (!collisons)
{
	image_angle += 10;
	hsp = 0;
}


#endregion