path_start(path, 3, path_action_reverse, true);

shoot = function(dc, d, b){
			firingdelay = firingdelay1;
			audio_play_sound(Weapon_sound, 1, false);
			with (instance_create_layer(x + 10, d,"Bullets", bullet_type))
			{
				direction =  dc + random_range(-30, 30);
				image_angle = direction;
			}
}