//menu_x += (menu_x_target - menu_x) / menu_speed;

// keyboard controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		audio_play_sound(MenuMove, 1, false);
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		audio_play_sound(MenuMove, 1, false);
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(MenuMove, 1, false);
		menu_x_target = gui_width+300;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 1: 
		{
			SaveGame(); 
			SlideTransition(TRANS_MODE.GOTO, rMenu); 
		}
		break;
		case 0: SlideTransition(TRANS_MODE.GOTO, file); break;
	}
}