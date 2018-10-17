object_follow = obj_slimeyboi;
follow_x = obj_goal.x;
x = follow_x;
y = 360;

lerp_speed = 0.01;

camera = camera_create();

var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
var orth = matrix_build_projection_ortho(1280, 720, 1, 8192);

camera_set_view_mat(camera, view);
camera_set_proj_mat(camera, orth);

view_camera[0] = camera;