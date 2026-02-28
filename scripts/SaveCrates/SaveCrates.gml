function SaveCrates(){
	//Overwrite old save
	//var n = CRATEFILE[room];
	/// create new save

	var file = file_text_open_write(CRATEFILE);
	file_text_write_real(file, instance_number(oWall));
	//file_text_close(num);
	file_text_close(file);
}