global.show_debug = false;
global.level_complete = false;
global.grv = 0.3; // Gravity
global.level = room - 1;
global.is_dead = false;

x = 0;
y = -128;

time_steps = 0;

reset_timer = 0;

continue_active = 0;
continue_timer = 0;

instance_create_layer(0, 0, "game", obj_control_hints);