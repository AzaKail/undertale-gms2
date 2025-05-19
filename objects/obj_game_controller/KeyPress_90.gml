// Z
if (menu_state == "main") {
    audio_play_sound(snd_menu_move, 1, false);

    switch (menu_options[menu_choice]) {
        case "Start":
            if (global.first_play) {
                room_goto(rm_testroom);
            } else {
                menu_state = "submenu";
                submenu_choice = 0;
            }
            break;

        case "Parameters":
            show_message("Параметры пока не реализованы");
            break;

        case "Quit":
            game_end();
            break;
    }
}


else if (menu_state == "submenu") {
    audio_play_sound(snd_menu_select, 1, false);

    switch (submenu_options[submenu_choice]) {
        case "Continue":
            scr_load_game();
            break;

        case "Reset":
            show_message("Нет. Эта попытка уже обречена.");
            scr_delete_save();

            // Сброс глобальных переменных
            global.first_play = true;
            global.reset_count += 1;
            global.route = "neutral";
            global.karma = 0;
            global.lv = 1;
            global.exp = 0;
            global.can_spare = false;

            menu_state = "main";
            break;
    }
}