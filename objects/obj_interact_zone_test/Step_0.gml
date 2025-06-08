var dist = point_distance(x, y, obj_player.x, obj_player.y);

// Диалог запускается только если:
// - Z только что нажата
// - не в диалоге
// - рядом
// - не заблокировано
if (keyboard_check_pressed(ord("Z")) && dist < 16 && !is_dialogue_active() && !dialogue_locked) {
    scr_show_dialogue(interact_text);
    dialogue_locked = true; // блок повтор
}

// Когда игрок отпускает Z — разрешаем 
if (!keyboard_check(ord("Z"))) {
    dialogue_locked = false;
}
