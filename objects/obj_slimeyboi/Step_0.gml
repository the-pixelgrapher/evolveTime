scr_player(); // Player control script

scr_move(hsp); // General physics script

if (place_meeting(x,y,obj_fluid))
{
	can_swim = true;
}
else 
	can_swim = false;
// Amimation
/*
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
*/