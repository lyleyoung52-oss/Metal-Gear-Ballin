if (place_meeting(x, y, oPlayer)) 
{
	audio_play_sound(PickUp1, 1, false);
	instance_destroy();
}
