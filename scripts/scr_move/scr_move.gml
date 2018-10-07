var hsp = argument[0];

// Basic collisions and gravity

// Calculate Movement
vsp = vsp + global.grv;

#region //  ---- COLLISIONS ----

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_solid))
{
	while(!place_meeting(x + sign(hsp), y, obj_solid))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_solid))
{
	while(!place_meeting(x, y + sign(vsp), obj_solid))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

#endregion