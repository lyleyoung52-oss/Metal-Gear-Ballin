
//define distance to player
var distance_to_player = distance_to_object(oPlayer);

//define conditions for guard to patrol freely
if distance_to_player > 150 or oPlayer.sprite_index == sCoverCrate{
	x += move_dir*move_spd;
	sprite_index = sEnemyWalk;
	if (bbox_left <= 0 || bbox_right >= room_width) or (place_meeting(x,y,oWall)){
	move_dir = -move_dir;
	//firingdelay = firingdelay - 1;
	}
else if -move_dir{
	image_xscale = -1;
	sprite_index = sEnemyWalk;
	}
else if move_dir{
		image_xscale = 1;
		sprite_index = sEnemyWalk
	}
}
else{ 
	firingdelay = firingdelay - 1;
	if oPlayer.sprite_index != sCoverCrate{
		if firingdelay < 0 { // Change 100 to your desired detection range
	        // Check if player is in front of the sprite within the detection range
			if (oPlayer.x < x && direction == 0) {
	            // Player is on the left, sprite is moving left, and vertically aligned
	            image_xscale = 1
				shoot(180); // Call your shoot function
				sprite_index = sEnemy_Shoot_H;	
			
	        } else{
	            // Player is on the right, sprite is moving right, and vertically aligned
	            image_xscale = 1
				shoot(0); // Call your shoot function
				sprite_index = sEnemy_Shoot_I;
				
			}
		}
	}
}

//Guard will only ever collide with player 
//if player is diguised as a crate
if place_meeting(x, y, oPlayer){
	move_dir = -move_dir;
}

