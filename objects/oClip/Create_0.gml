image_speed = 0;
shake_length = 10;
shake_magnitude = 1;
shake_remain = 3;

cycle = function(i){
	image_index++;
	if image_index == i{
		oPlayer.firingdelay = 100;
		audio_play_sound(clip, 2, false);
		audio_play_sound(Reload, 3, false)
	}
}

clip_shake = function(){
	ClipShake(2, 8);	
}