// obj_ball Collision Event with obj_wall
//move_bounce_all(true); // This function handles the reflection of the movement

if wall_hp <= 0{
	instance_destroy();	
}

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - (1/shake_length)*(shake_magnitude));