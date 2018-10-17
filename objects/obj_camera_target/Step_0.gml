follow_x = clamp(object_follow.x, 640, room_width-640);
x = lerp(x, follow_x, lerp_speed);

scr_controls();
if ((key_left || key_right || key_up) && !is_player_focused)
{
	object_follow = obj_slimeyboi;
	lerp_speed = 0.2;
	is_player_focused = true;
}

var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, view);