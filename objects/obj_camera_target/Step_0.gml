// x follow coordinate clamped to room width. Prevents the hard stop when lerping to edge of room
follow_x = clamp(object_follow.x, 640, room_width-640);

// Smooth camera movement
x = lerp(x, follow_x, lerp_speed);

// Snap to player when attempting to move
scr_controls();
if (key_left || key_right || key_up)
{
	if (!is_player_focused)
	{
		object_follow = obj_slimeyboi;
		is_player_focused = true;
	}
	lerp_speed = 0.2;
}

// Update camera
var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, view);