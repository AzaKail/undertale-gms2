if (keyboard_check_pressed(ord("Z")) && place_meeting(x, y, obj_player)) {
    if (!obj_dialogue_box.active) {
        scr_show_dialogue(interact_text);
    }
}
