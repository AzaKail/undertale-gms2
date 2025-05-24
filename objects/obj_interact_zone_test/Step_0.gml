if (keyboard_check_pressed(ord("Z"))) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    if (dist < 32 && !is_dialogue_active()) {
       scr_show_dialogue(interact_text);
    }
}

