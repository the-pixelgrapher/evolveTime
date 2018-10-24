// On Wall
if wallclimb && !place_meeting(x,y,obj_wall)
	wallclimb=false

// Climb Up
if place_meeting(x,y,obj_wall) && place_meeting(x,y+1,obj_wall)
	if keyboard_check(vk_up)
	wallclimb=true

// Climb Down
if place_meeting(x,y+1,obj_wall)
	if keyboard_check(vk_down)
	wallclimb=true
	
// Climbing Up
if wallclimb && keyboard_check(vk_up){
	y=y-3
	if !place_meeting(x,y,obj_wall) {
		wallclimb=false
		while(!place_meeting(x,y+1,obj_wall))
		y+=1
	}
}

// Climbing Down
// if wallclimb && keyboard_check(vk_down)
