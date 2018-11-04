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
	if(key_ctrl)
	{
		switch(Direction)
		{
			case Direction.right:
			var block = instance_place(x+5,y,obj_dirt_block)
			if place_meeting(x+5,y,block)
			{
				block.hp -=1;
				break;
			}
			case Direction.left:
			var block = instance_place(x-5,y,obj_dirt_block)
			if place_meeting(x-5,y,obj_dirt_block)
			{
				block.hp -=1;
				break;
			}
			case Direction.down:
			var block = instance_place(x,y+5,obj_dirt_block)
			if place_meeting(x,y+5,obj_dirt_block)
			{
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