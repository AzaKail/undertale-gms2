if (menu_state == "main") {
    switch (menu_options[menu_choice]) {
        case "Start":
            if (global.first_play) {
                room_goto(rm_intro_fall); // или другая стартовая
            } else {
                menu_state = "continue"; // подменю, позже добавим
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
