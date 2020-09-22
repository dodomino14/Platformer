/// @description Insert description here
// You can write your code in this editor
enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
w = display_get_gui_width();
h = display_get_gui_height();
mode = TRANS_MODE.INTRO;
percent = 100;
target = room;