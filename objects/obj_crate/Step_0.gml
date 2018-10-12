scr_move(hsp);
scr_fire();

if (on_fire)
{
	hp -= 1;
}

if (hp <= 0)
{
 instance_destroy();	
}