scr_player(); // Player control script

scr_move(hsp); // General physics script

// Amimation
image_speed = 1;

if (hsp == 0 || !grounded)
{
	image_index = 0;
}