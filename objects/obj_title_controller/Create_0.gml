// Menu origin
y = 300;

// Current menu position
select = 0;

// Character sprites accompanying selected item
menu_sprite[0] = spr_player_blob;
menu_sprite[1] = spr_bunny;
menu_sprite[2] = spr_turtle;
menu_sprite[3] = spr_spider;

image_speed = 1/6;

scr_load();

audio_stop_all();
scr_audio("music_menu");