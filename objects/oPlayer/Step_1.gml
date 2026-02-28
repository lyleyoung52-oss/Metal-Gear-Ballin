if hp <= 0{
	game_restart();	
}

firingdelay = firingdelay - 1;

if (mouse_check_button(mb_left)) and (firingdelay < 0){
	scr_playerShoot();
	oClip.clip_shake();
	oClip.cycle(10);
}

//make enemies shoot you

stepdelay = stepdelay - 1

if (hsp != 0 or vsp != 0) and stepdelay < 0{
	audio_play_sound(footsteps, 3, false);
	stepdelay = 12.5;
}
