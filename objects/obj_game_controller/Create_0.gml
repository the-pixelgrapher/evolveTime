global.show_debug = false;
global.level_complete = false;
global.grv = 0.3; // Gravity
global.level = room - 2;
global.is_dead = false;
global.is_paused = false;

x = 0;
y = -128;

time_steps = 0;

reset_timer = 0;

complete_sound_played = false;
continue_active = 0;
continue_timer = 0;

instance_create_layer(0, 0, "game", obj_pause_menu);
instance_create_layer(0, 0, "game", obj_control_hints);
scr_audio("music_level");