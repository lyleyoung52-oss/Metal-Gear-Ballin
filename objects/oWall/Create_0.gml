
hit = function(){
	wall_hp--;	
	audio_play_sound(Crate, 2, false);
	if (image_index != 1) and wall_hp < 2
	{
		image_index = 1;
	}
}

shake = function(){
	CrateShake(2, 8);	
}