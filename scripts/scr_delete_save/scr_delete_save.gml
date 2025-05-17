function scr_delete_save(){
	/// scr_delete_save()
	if (file_exists("save.ini")) {
		file_delete("save.ini");
	}

}