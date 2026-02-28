//The ball will rebound off player only if they are diguised as a crate
if sprite_index == sCoverCrate{
	with (other){

// Check for horizontal collision 
	if (place_meeting(x + H_ball_speed, y, oPlayer)) {
   		var instance_crate = instance_place(x + H_ball_speed, y, oWall);
		H_ball_speed *= -1; // Reverse horizontal speed
		}
	oPlayer.hp--;
	x += H_ball_speed;

//Check for vertical collision
	if (place_meeting(x, y + V_ball_speed, oPlayer)) {
		var instance_crate = instance_place(x, y + V_ball_speed, oWall);
		V_ball_speed *= -1; // Reverse vertical speed
		}
	oPlayer.hp--;
	y += V_ball_speed;
	}
}