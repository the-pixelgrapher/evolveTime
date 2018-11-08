scr_player(); // Player control script
scr_move(hsp); // General physics script

var block;
if(controls_enabled)
{
	if(key_left)
	{
		Direction = Direction.left;
	}
	if(key_right)
	{
		Direction = Direction.right;
	}
	if(key_down)
	{
		Direction = Direction.down;	
	}
	if(key_up)
	{
		Direction = Direction.up;	
	}
	if(key_ability && can_dig)
	{
		switch(Direction)
		{
			case Direction.right:
			var block = instance_place(x+5,y-30,obj_dirt_block)
			if place_meeting(x+5,y-30,block)
			{
				sprite_index = spr_mole_digging;
				can_dig = false;
				alarm[0] = 30;
				block.hp -=1;
				break;
			}
			case Direction.left:
			var block = instance_place(x-5,y-30,obj_dirt_block)
			if place_meeting(x-5,y-30,block)
			{
				sprite_index = spr_mole_digging;
				can_dig = false;
				alarm[0] = 30;
				block.hp -=1;
				break;
			}
			case Direction.down:
			var block = instance_place(x,y+5,obj_dirt_block)
			if place_meeting(x,y+5,block)
			{
				sprite_index = spr_mole_digging;
				can_dig = false;
				alarm[0] = 30;
				block.hp -=1;
				break;
			}
			case Direction.up:
			var block = instance_place(x,y-40,obj_dirt_block)
			if place_meeting(x,y-40,block)
			{
				sprite_index = spr_mole_digging;
				can_dig = false;
				alarm[0] = 30;
				block.hp -=1;
				break;
			}
		}
	}
}


/* Change sprite depending on player control
if (controls_enabled)
{
	sprite_index = ;	
}
else
{
	sprite_index = ;
}
*/