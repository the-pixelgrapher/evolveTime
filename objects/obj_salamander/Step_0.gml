scr_player();


scr_move(hsp); // General physics script

if (y > 720)
{
	room_restart();
}

// Change sprite depending on player control
if (controls_enabled)
{
	sprite_index = spr_player_salamander_blob;	
}
else
{
	sprite_index = spr_salamander;
}