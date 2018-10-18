alarm[0] = 75;				// Time before camera focuses on player

object_follow = obj_goal;	// Current camera target object

follow_x = clamp(object_follow.x, 640, room_width-640);	
x = follow_x;
y = 360;

lerp_speed = 0.04;			// Speed of auto-focus on player
is_player_focused = false;	// Whether the camera has focused onto player

// Setup camera matrix
camera = camera_create();

var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
var orth = matrix_build_projection_ortho(1280, 720, 1, 8192);

camera_set_view_mat(camera, view);
camera_set_proj_mat(camera, orth);

view_camera[0] = camera;

// Camera width/height halves
view_w_half = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;

// Initialize variables for scr_screen_shake()
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 60;