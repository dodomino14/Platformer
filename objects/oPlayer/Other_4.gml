/// @description Autosave
// You can write your code in this editor

//deletes the old save
if(file_exists(SAVEFILE)){
	file_delete(SAVEFILE);
}

//creates the new save
var file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);