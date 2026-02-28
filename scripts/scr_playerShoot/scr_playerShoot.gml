///@desc perform player shoot function

function scr_playerShoot(){
	if mouse_check_button(mb_left) and keyboard_lastkey = ord("D"){
		//sprite_index = sShootRight;
		firingdelay = 20;
		with (instance_create_layer(x,y - 5,"Bullets",oBullet))
		{
			speed = 17; 
			direction =  0 + random_range(-1, 1);
			image_angle = direction;
			audio_play_sound(Player_shoot, 1, false);
		}
	}
	else if mouse_check_button(mb_left) and keyboard_lastkey = ord("W"){
		//sprite_index = sShootRight;
		firingdelay = 20;
		with (instance_create_layer(x - 5,y,"Bullets",oBullet))
		{
			speed = 17; 
			direction =  90 + random_range(-1, 1);
			image_angle = direction;
			audio_play_sound(Player_shoot, 1, false);
		}
	}
	else if mouse_check_button(mb_left) and keyboard_lastkey = ord("A"){
		//sprite_index = sShootRight;
		firingdelay = 20;
		with (instance_create_layer(x,y + 5,"Bullets",oBullet))
		{
			speed = 17; 
			direction =  180 + random_range(-1, 1);
			image_angle = direction;
			audio_play_sound(Player_shoot, 1, false);
		}
	}
	else if mouse_check_button(mb_left) and keyboard_lastkey = ord("S"){
		//sprite_index = sShootRight;
		firingdelay = 20;
		with (instance_create_layer(x + 5,y,"Bullets",oBullet))
		{
			speed = 17; 
			direction =  270 + random_range(-1, 1);
			image_angle = direction;
			audio_play_sound(Player_shoot, 1, false);
		}
	}
}