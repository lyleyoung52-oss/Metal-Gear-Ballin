//restrict ball to screen
if (x + 7) + H_ball_speed < 0 or x + H_ball_speed > room_width{
	H_ball_speed = -H_ball_speed
	audio_play_sound(Bounce, 1, false);
	}

if (y + 7) + V_ball_speed < 0 or (y - 7) + V_ball_speed > room_height{
	V_ball_speed = -V_ball_speed
	audio_play_sound(Bounce, 1, false);
	}

// Check for horizontal collision
if (place_meeting(x + H_ball_speed, y, oWall)){
   	var instance_crate = instance_place(x + H_ball_speed, y, oWall);
	var instance_large_crate = instance_place(x + H_ball_speed, y, oLargeWall);
	H_ball_speed *= -1; // Reverse horizontal speed
	audio_play_sound(Bounce, 1, false);
	instance_crate.hit()
	instance_crate.shake();
	}
x += H_ball_speed;

//Check for vertical collision
if (place_meeting(x, y + V_ball_speed, oWall)){
	var instance_crate = instance_place(x, y + V_ball_speed, oWall);
	var instance_large_crate = instance_place(x, y + V_ball_speed, oLargeWall);
	V_ball_speed *= -1; // Reverse vertical speed
	audio_play_sound(Bounce, 1, false);
	instance_crate.hit()
	instance_crate.shake();
	}
y += V_ball_speed;

//Check for bullet collision
if (place_meeting(x + H_ball_speed, y, oBullet)) {
	 H_ball_speed *= -1; // Reverse horizontal speed
	}

if (place_meeting(x, y + V_ball_speed, oBullet)) {
	V_ball_speed *= -1; // Reverse vertical speed
	}

