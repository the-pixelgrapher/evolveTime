hsp = 0; 
vsp = 0;
walksp = 2; // Horizontal movement speed
jump_height = 7; // Initial speed of jump (positive is up)

airtime = 0; // Num of steps in air for
jump_armed = false; // Whether the player can jump at current step
queue_jump = false; // Whether this character will autojump once it touches the ground

can_jump = true; // Whether this character can jump
can_push = true; // Whether this character can push moveable objects
can_break = false; // Whether this character can break breakable objects

controls_enabled = false; // Whether or not the this object is being controlled