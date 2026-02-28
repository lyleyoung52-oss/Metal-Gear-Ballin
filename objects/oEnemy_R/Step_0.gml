 
//define distance to player
var distance_to_player = distance_to_object(oPlayer);

//define conditions for guard to patrol freely
if distance_to_player > 150 or oPlayer.sprite_index == sCoverCrate{
	sprite_index = Sprite_walk;
}
else{ 
	firingdelay = firingdelay - 1;
	if oPlayer.sprite_index != sCoverCrate{
		if firingdelay < 0 { // Change 100 to your desired detection range
	        // Check if player is in front of the sprite within the detection range
	        if (oPlayer.y < y && direction == 00) {
	            // Player is on the left, sprite is moving left, and vertically aligned
	            //image_xscale = 1
				shoot(90, y - 30, bullet_type); // Call your shoot function
				sprite_index = Image_shoot_up;
	        } else{
	            // Player is on the right, sprite is moving right, and vertically aligned
	            //image_xscale = 1
				shoot(270, y + 30, bullet_type); // Call your shoot function
				sprite_index = Image_shoot_down;
			}
		}
	}
}

if (abs(angle_difference(180, direction)) < 90){
	image_xscale = -1; 
}
else if (abs(angle_difference(180, direction)) > 90){
image_xscale = 1;	
}
else if (direction >= 0 && direction < 180) {
    sprite_index = Sprite_walk_up; // Sprite faces down
}
else if (direction >= 0 && direction > 180){
    sprite_index = Sprite_walk_down; // Sprite faces up
}






//Guard will only ever collide with player 
//if player is diguised as a crate
if place_meeting(x, y, oPlayer){
	move_dir = -move_dir;
}