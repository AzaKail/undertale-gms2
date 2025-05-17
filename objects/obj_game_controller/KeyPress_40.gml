// DOWN
if (menu_state == "main") {
    menu_choice = (menu_choice + 1) mod array_length(menu_options);
    audio_play_sound(snd_menu_move, 1, false);
}
