if (transition_mode == "in") {
    transition_alpha -= transition_speed;
    if (transition_alpha <= 0) {
        transition_alpha = 0;
        instance_destroy(); // завершили fade in
    }
}
else if (transition_mode == "out") {
    transition_alpha += transition_speed;
    if (transition_alpha >= 1) {
        transition_alpha = 1;
        room_goto(target_room);
    }
}
