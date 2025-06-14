function scr_load_game() {
    if (file_exists("save.ini")) {
        ini_open("save.ini");

        var room_name = ini_read_string("Game", "room", "rm_ruins_start");
        global.load_x = ini_read_real("Player", "x", 100);
        global.load_y = ini_read_real("Player", "y", 100);

        global.lv = ini_read_real("Stats", "lv", 1);
        global.exp = ini_read_real("Stats", "exp", 0);
        global.karma = ini_read_real("Stats", "karma", 0);
        global.route = ini_read_string("Stats", "route", "neutral");

        global.first_play = ini_read_bool("Flags", "first_play", true);

        ini_close();

        room_goto(asset_get_index(room_name));
    }
}
