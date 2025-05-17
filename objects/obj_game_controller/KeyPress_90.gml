// Z
if (menu_state == "main") {
    audio_play_sound(snd_menu_move, 1, false);

    switch (menu_options[menu_choice]) {
        case "Start":
            if (global.first_play) {
                room_goto(rm_intro_fall);
            } else {
                menu_state = "continue"; // подменю позже
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
