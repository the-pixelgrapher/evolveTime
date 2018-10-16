follow_x = clamp(object_follow.x, 640, room_width-640);
x = lerp(x, follow_x, 0.2);

var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, view);