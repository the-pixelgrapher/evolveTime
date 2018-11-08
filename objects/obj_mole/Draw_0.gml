/// @description Insert description here
// You can write your code in this editor
draw_self();

if (controls_enabled)
{
	draw_sprite(spr_indicator, 0, x, y - 52);
	if(can_dig)
	{
		sprite_index = spr_player_mole;
	}
}
else
{
	sprite_index = spr_mole;	
}

// Amimation
image_speed = 1;

if (hsp == 0 && sprite_index == spr_player_mole)
{
	image_index = 0;
	image_speed = 0;
}

if (hsp > 0)
{
	image_xscale = 1;
}
else if (hsp < 0)
{
	image_xscale = -1;
}