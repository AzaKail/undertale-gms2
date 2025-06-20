function scr_save_game() {
    ini_open("save.ini");

    // Позиция и комната
    ini_write_string("Game", "room", room_get_name(room));
    ini_write_real("Player", "x", obj_player.x);
    ini_write_real("Player", "y", obj_player.y);

    // Статы
    ini_write_real("Stats", "lv", global.lv);
    ini_write_real("Stats", "exp", global.exp);
    ini_write_real("Stats", "karma", global.karma);
    ini_write_string("Stats", "route", global.route);
    ini_write_real("Stats", "hp", global.hp);
    ini_write_real("Stats", "atk", global.atk);
    ini_write_real("Stats", "def", global.def);

    // Системные флаги
    ini_write_bool("Flags", "first_play", false);

    ini_close();
}
