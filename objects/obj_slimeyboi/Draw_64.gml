/// temp debug text

if (controls_enabled)
{
	draw_set_font(fnt_debug);
	draw_set_halign(0);
	draw_set_colour(c_gray);
	draw_text(64, 64, "can_push: " + string(can_push));
	draw_text(64, 80, "can_jump: " + string(can_jump));
	draw_text(64, 96, "can_break: " + string(can_break));
	draw_text(64, 112, "can_ignite: " + string(can_ignite));
	draw_text(64, 128, "can_swim: " + string(can_swim));
}
