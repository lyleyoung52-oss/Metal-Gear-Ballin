rate = rate - 1

//Destroy bullet when hit crate	
if place_meeting(x, y, oWall) and rate < 0{
	audio_play_sound(ricochet, 3, false);
	rate = 10;
	
}


//turn bullet into spark animation
if place_meeting(x, y, oWall){
	instance_create_layer(x, y, layer, oSpark);
}


if (place_meeting(x, y, oWall)) instance_destroy();
if (place_meeting(x, y, Ball)) instance_destroy();
if (place_meeting(x, y, oEnemy)) instance_destroy();

audio_sound_pitch(ricochet, random_range(0.1, 2));