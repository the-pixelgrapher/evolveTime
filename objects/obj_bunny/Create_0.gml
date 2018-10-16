walksp = 4; // Horizontal movement speed
jump_height = 9.5; // Initial speed of jump (positive is up)

// State variables
hsp = 0; 
vsp = 0;
collisons = true;
capture_cooldown = 0;

airtime = 0; // Num of steps in air for
jump_armed = false; // Whether the player can jump at current step
queue_jump = false; // Whether this character will autojump once it touches the ground

can_jump = true; // Whether this character can jump
can_push = false; // Whether this character can push moveable objects
can_break = false; // Whether this character can break breakable objects
can_ignite = false; // Whether this character can burn flammable objects
can_swim = false; // Whether this character can swim

controls_enabled = false; // Whether or not the this object is being controlled
do_walk = true; // Whether this character walks whilst not being controlled

// Initialize Objects
/*
object_fluid		= obj_fluid; 
density             = 0.7;		
float_damping       = 0.08;		
swim_speed          = 1;
grav				= 1;
*/
sink				= true;	
sink_delay			= 0;
is_touching_water	= false;
// Most of these are for the buoyancy build