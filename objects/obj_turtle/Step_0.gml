scr_player(); // Player control script
scr_move(hsp); // General physics script
scr_swim();

// Change sprite depending on player control
if (controls_enabled)
{
	sprite_index = spr_player_turtle_blob;	
}
else
{
	sprite_index = spr_turtle;
}
