walksp = 3; // Horizontal movement speed
jump_height = 7; // Initial speed of jump (positive is up)

// State variables
hsp = 0; 
vsp = 0;
collisons = true;
capture_cooldown = 0;
wallclimb=false;
grav = 0.2
grounded = false;

airtime = 0; // Num of steps in air for
jump_armed = false; // Whether the player can jump at current step
queue_jump = false; // Whether this character will autojump once it touches the ground

can_jump = true;; // Whether this character can jump
can_push = false; // Whether this character can push moveable objects
can_break = false; // Whether this character can break breakable objects
can_ignite = false; // Whether this character can burn flammable objects
can_swim = false; // Whether this character can swim
can_climb = true;
object_climb = obj_web; // store web object

controls_enabled = false; // Whether or not the this object is being controlled
do_walk = true; // Whether this character walks whilst not being controlled

// Swimming 
sink				= true;	
sink_delay			= 0;
is_touching_water	= false;

can_dig = true;

enum Direction
{
	down = 270,
	right = 0,
	left = 180,
	up = 90
}

Direction = Direction.right


