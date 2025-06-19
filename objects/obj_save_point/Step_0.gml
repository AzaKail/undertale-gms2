if (!obj_dialogue_box.active && !active && point_distance(x, y, obj_player.x, obj_player.y) < 32) {
    if (keyboard_check_pressed(ord("Z"))) {
        active = true;
        menu_index = 0;
    }
}

if (active) {
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)) {
        menu_index = 1 - menu_index; // переключение между 0 и 1
    }

    if (keyboard_check_pressed(ord("Z"))) {
        if (menu_index == 0) {
            scr_save_game(); // Сохраняем
        }
        active = false; // Закрываем меню в любом случае
    }

    if (keyboard_check_pressed(ord("X"))) {
        active = false; // Отмена
    }
}
