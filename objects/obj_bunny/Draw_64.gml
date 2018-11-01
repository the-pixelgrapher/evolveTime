/// temp debug text

if (controls_enabled)
{
	draw_set_font(fnt_debug);
	draw_set_halign(0);
	draw_set_colour(c_gray);
	draw_text(64, 64, "Push: " + string(can_push));
	draw_text(64, 80, "Jump: " + string(can_jump));
	draw_text(64, 96, "Break: " + string(can_break));
	draw_text(64, 112, "Ignite: " + string(can_ignite));
	draw_text(64, 128, "Swim: " + string(can_swim));
}
