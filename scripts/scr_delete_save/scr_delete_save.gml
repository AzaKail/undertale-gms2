function scr_delete_save() {
    if (file_exists("save.ini")) {
        file_delete("save.ini");
    }

    global.first_play = true;

    // сбросим все остальные данные
    scr_init_player_defaults();
}
