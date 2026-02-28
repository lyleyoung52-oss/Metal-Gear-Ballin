/// @desc Control Menu

//Item ease in


menu_x += (menu_x_target - menu_x) / menu_speed;

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
		audio_stop_sound(MainMenuTheme);
	}
}

if (menu_x > gui_width+150) and (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: room_goto(1); audio_play_sound(MenuStart, 1, false); Crates_NewGame(); break;
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			{
				SlideTransition(TRANS_MODE.NEXT);
				//audio_play_sound(MenuStart, 1, false);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				SlideTransition(TRANS_MODE.INTRO);
				room_goto(target);
				show_debug_message(string(target));
				//file_text_close(file);
				audio_play_sound(MenuStart, 1, false);
			}
		}
		break;
		case 0: game_end(); break;
		
	}
}
