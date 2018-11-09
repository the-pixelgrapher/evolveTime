draw_set_alpha(1);
draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_valign(0);
draw_set_halign(1);

draw_text(640, 115, "ART");
draw_text(640, 249, "LEVEL DESIGN");
draw_text(640, 357, "SOUND");
draw_text(640, 441, "PROGRAMMING");
draw_text(640, 549, "USER INTERFACE");

draw_set_font(fnt_hints);
draw_set_color($52453D);

draw_text(640, 115 + 36, "Ben Delamore");
draw_text(640, 115 + 60, "Jiayue Wu");
draw_text(640, 115 + 84, "Lucille Lu");

draw_text(640, 249 + 36, "Ben Delamore");
draw_text(640, 249 + 60, "David Morris");

draw_text(640, 357 + 36, "Lucille Lu");

draw_text(640, 441 + 36, "Daniel Joosten");
draw_text(640, 441 + 60, "David Morris");

draw_text(640, 549 + 36, "David Morris");