function scr_show_dialogue(lines) {
    var dlg = instance_find(obj_dialogue_box, 0);
    if (dlg != noone) {
        with (dlg) {
            text_lines = lines;
            line_index = 0;
            active = true;
        }
    }
}
