function AddCrates(){
	//Overwrite old save
	//var n = CRATEFILE[room];
	/// create new save

	var crates_in_prev_rooms = file_text_open_read(CRATEFILE); 
	show_debug_message(real(crates_in_prev_rooms));
	//file_text_close(num);
	file_text_close(crates_in_prev_rooms);
}