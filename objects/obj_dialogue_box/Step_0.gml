if (active && keyboard_check_pressed(ord("Z"))) {
    line_index += 1;
    if (line_index >= array_length(text_lines)) {
        active = false;
    }
}
