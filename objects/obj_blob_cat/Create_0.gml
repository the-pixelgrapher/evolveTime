hsp = 0; 
vsp = 0;
walksp = 4; // Horizontal movement speed
jump_height = 7; // Initial speed of jump (positive is up)

airtime = 0; // Num of steps in air for
jump_armed = false; // Whether the player can jump at current step

can_jump = true; // Whether this character can jump
can_push = false; // Whether this character can push moveable objects
can_break = true; // Whether this character can break breakable objects

controls_enabled = false; // Whether or not the this object is being controlled