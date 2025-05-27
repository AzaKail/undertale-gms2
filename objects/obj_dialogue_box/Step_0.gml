if (active && keyboard_check_pressed(ord("Z"))) {
    line_index += 1;
    if (line_index >= array_length(text_lines)) {
        active = false;
        just_finished = true; // <-- отметим, что закончили
    }
}

// если игрок отошёл от интерактора — разрешим новый диалог
if (!active && !keyboard_check(ord("Z"))) {
    just_finished = false;
}
