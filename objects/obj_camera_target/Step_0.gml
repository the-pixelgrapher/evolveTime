// x follow coordinate clamped to room width. Prevents the hard stop when lerping to edge of room
follow_x = clamp(object_follow.x, 640, room_width-640);

// Smooth camera movement
x = lerp(x, follow_x, lerp_speed);
y = 384;

// Snap to player when attempting to move
scr_controls();
if (max(key_left_p, key_right_p, key_up_p) && alarm[0] < 60)
{
	if (!is_player_focused)
	{
		object_follow = obj_slimeyboi;
		is_player_focused = true;
	}
	lerp_speed = 0.2;
}

// Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

// Keep the camera within the room
x = clamp(x, 640, room_width-640);

// Update camera
var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, view);