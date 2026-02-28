scr_getInputs();
Snap_dist = 5; 
flat_instance = noone;
Bullet_count = 10;


if room != 6{
	global.Prev_Room = room;
}

switch state{	
	case states.normal: scr_playerNormal(); break;
	case states.flatten_left: scr_playerFlatten_left(); break;
	case states.flatten_right: scr_playerFlatten_right(); break;
	case states.flatten_up: scr_playerFlatten_up(); break;
	case states.flatten_down: scr_playerFlatten_down(); break;
}

firingdelay = firingdelay - 1;


//Animation
if (hsp or vsp)
{
	if keyboard_check_pressed(key_right)
	{
		sprite_index = Player_D;
	}
	if keyboard_check_pressed(key_down)
	{
		sprite_index = Player_R;
	}
}
else if (-hsp or -vsp)
{
	if keyboard_check_pressed(key_left)
	{
		sprite_index = Player_U;
		
	}
	if keyboard_check_pressed(key_up)
	{
		sprite_index = Player_L;
	}
}

else if mouse_check_button(mb_left) and keyboard_lastkey = ord("D"){
	sprite_index = sShootRight;

	//firingdelay = 5;
}
else if mouse_check_button(mb_left) and keyboard_lastkey = ord("W"){
	sprite_index = sShootUp;

}
else if mouse_check_button(mb_left) and keyboard_lastkey = ord("S"){
	sprite_index = sShootDown;

}
else if mouse_check_button(mb_left) and keyboard_lastkey = ord("A"){
	sprite_index = sShootLeft;

}
else if hsp == 0 and vsp == 0 and key_C{
		sprite_index = sCoverCrate;	
	}
else{
	sprite_index = sPlayer;
}

if hsp == 0 and key_left
{	
	scr_playerFlatten_left();
}
else if hsp == 0 and key_right
{
	scr_playerFlatten_right();
}
else if vsp == 0 and key_down
{
	scr_playerFlatten_down();	
}
else if vsp == 0 and key_up
{
	scr_playerFlatten_up();		
}

if firingdelay > 20{
	sprite_index = sReload;	
}