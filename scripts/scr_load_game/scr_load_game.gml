function scr_load_game() {
    if (file_exists("save.ini")) {
        ini_open("save.ini");

        // Загрузка комнаты и координат
        var room_name = ini_read_string("Game", "room", "rm_ruins_start");
        global.load_x = ini_read_real("Player", "x", 100);
        global.load_y = ini_read_real("Player", "y", 100);

        // Загрузка статов
        global.lv = ini_read_real("Stats", "lv", 1);
        global.exp = ini_read_real("Stats", "exp", 0);
        global.karma = ini_read_real("Stats", "karma", 0);
        global.route = ini_read_string("Stats", "route", "neutral");
        global.hp = ini_read_real("Stats", "hp", 20);
        global.atk = ini_read_real("Stats", "atk", 10);
        global.def = ini_read_real("Stats", "def", 5);

        // Флаги
        global.first_play = ini_read_bool("Flags", "first_play", false);

        ini_close();

        // Переход в нужную комнату
        room_goto(asset_get_index(room_name));
    }
}
