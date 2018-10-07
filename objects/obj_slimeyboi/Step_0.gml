scr_player();

scr_move(hsp); // General physics script

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