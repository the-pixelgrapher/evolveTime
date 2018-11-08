scr_fire();

if (on_fire)
{
	hp -= 1;
	index += 10/60;
}

if (hp <= 0)
{
	scr_audio("explosion");
	scr_screen_shake(2, 5);
	instance_destroy();

}