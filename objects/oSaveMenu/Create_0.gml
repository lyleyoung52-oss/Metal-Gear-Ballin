/// @desc GUI/Vars/Menu Setup
//#macro SAVEFILE "Save.sav"

gui_width = display_get_gui_width();
gui_height= display_get_gui_height();

menu_x = gui_width * 0.5;
menu_y = gui_height - (gui_height * 0.5);
menu_x_target = gui_width - (gui_height * 0.5);
menu_speed = 25;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[1] = "Save Game";
menu[0] = "Don't Save";

menu_items = array_length(menu);
menu_cursor = 1; 
