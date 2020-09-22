/// @description Insert description here
// You can write your code in this editor
#macro SAVEFILE "save.sav"


gui_height = display_get_gui_height();
gui_width = display_get_gui_width();
margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - margin;
menu_speed = 12;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = false;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Exit Game";

menu_cursor = 2;