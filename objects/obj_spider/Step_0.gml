scr_player();

scr_move(hsp);

scr_controls();

scr_wallclimb();

/*
var move = (key_right - key_left) * controls_enabled;
	hsp = move * walksp;

scr_move(hsp); // General physics script
*/

// Change sprite depending on player control
/*
if (controls_enabled)
{
	sprite_index = spr_spider;	
}
else
{
	sprite_index = spr_spider;
}
*/

// Amimation
image_speed = 1;

if (hsp == 0 || !grounded)
{
	image_index = 0;
}
