scr_player(); // Player control script

scr_move(hsp); // General physics script

// Change sprite depending on player control
if (controls_enabled)
{
	sprite_index = spr_player_cat_blob;	
}
else
{
	sprite_index = spr_bunny;
}

// Amimation
image_speed = 1;

if (hsp == 0 || !grounded)
{
	image_index = 0;
}

// level 7a failsafe
if (room == 5 && x > 1280 && y > 400)
{
	if (global.level_complete)
	{
		x = 1532;
	}
}
