// Get player input
scr_controls();

// Calculate Movement
scr_push();

var move = key_right - key_left;
hsp = move * walksp;
//vsp = vsp + grv;

// Grounded check
if (place_meeting(x, y + 1, obj_solid)) 
{
    grounded = true;
	can_jump = true;
} 
else 
{
    grounded = false;
}

// ---- JUMPING ----
//var airtime = 0; // num of steps in air for

// Generous jump buffer
var jump_buffer = 5; // num of steps jump still allowed after leaving ground

if (!grounded)
{
	airtime += 1;
}
else
{
	airtime = 0;
}

if (airtime >= jump_buffer)
{
	can_jump = false;	
}

if (key_up_p && can_jump)
{
	vsp = -7;
	can_jump = false;
}

scr_move(hsp);

if (y > 720)
{
	room_restart();
}

//Draw Event
if (!grounded) 
{
    sprite_index = spr_slimeyboijump;
    if (image_index >= image_number-1) {
        image_index = image_number-1;
    }
}
else 
{
    sprite_index = spr_slimeyboi;
}