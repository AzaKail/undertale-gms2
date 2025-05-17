// UP
if (menu_state == "main") {
    menu_choice = (menu_choice - 1 + array_length(menu_options)) mod array_length(menu_options);
    audio_play_sound(snd_menu_move, 1, false);
}
