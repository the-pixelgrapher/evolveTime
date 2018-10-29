scr_move(hsp);

if(object_climb != noone && can_climb && controls_enabled)
    {
        if(key_up || (key_down && !grounded))
        {
            if(place_meeting(x, y, object_climb) &&                //This collision line checks across the top
                collision_line(bbox_left, bbox_top - 1, bbox_right, //of the player mask to ensure his feet aren't
                bbox_top -1, object_climb, false, true) != noone)  //just touching a ladder while his body is above
            {                                                       //it.
                state = PLAYER_STATE.climb
                exit;
            }
        }
    }




