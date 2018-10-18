scr_move(hsp);

scr_fire();

if (on_fire)
{
	hp -= 1;
	index += 10/60;
}

if (hp <= 0)
{
	instance_destroy();
	scr_screen_shake(2, 5);
}