function Crates_NewGame(){
	//Overwrite old save
	if (file_exists(CRATEFILE)) file_delete(CRATEFILE);
}