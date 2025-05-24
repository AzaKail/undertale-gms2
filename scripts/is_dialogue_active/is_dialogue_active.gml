function is_dialogue_active() {
    var dlg = instance_find(obj_dialogue_box, 0);
    return (dlg != noone && dlg.active);
}
