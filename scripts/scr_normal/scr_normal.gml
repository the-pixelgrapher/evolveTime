scr_move(hsp);


if(object_climb != noone && can_climb && controls_enabled)
{
if(key_up || (key_down && !grounded))
	{
	// Collision check
	if(place_meeting(x, y, object_climb) &&                
	collision_line(bbox_left, bbox_top - 1, bbox_right,
	bbox_top -1, object_climb, false, true) != noone)  
		{                                                       
			state = PLAYER_STATE.climb
			exit;
		}
	}
}




