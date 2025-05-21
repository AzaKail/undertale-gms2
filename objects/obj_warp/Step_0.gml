if (place_meeting(x, y, obj_player)) {
    global.load_x = target_x;
    global.load_y = target_y;

    if (!instance_exists(obj_room_transition)) {
        var t = instance_create_layer(0, 0, "GUI", obj_room_transition);
        t.transition_mode = "out";
        t.target_room = target_rm;
    }
}
