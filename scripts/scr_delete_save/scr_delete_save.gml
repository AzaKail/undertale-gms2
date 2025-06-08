function scr_delete_save() {
    if (file_exists("save.ini")) {
        file_delete("save.ini");
    }

    // Сброс всех глобальных данных
    global.first_play = true;
    global.lv = 1;
    global.exp = 0;
    global.karma = 0;
    global.route = "neutral";
    global.can_spare = false;
}
