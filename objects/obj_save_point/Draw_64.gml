if (active) {
    var w = 200;
    var h = 80;
    var x1 = (display_get_gui_width() - w) / 2;
    var y1 = (display_get_gui_height() - h) / 2;

    draw_set_color(c_black);
    draw_rectangle(x1, y1, x1 + w, y1 + h, false);
    draw_set_color(c_white);
    draw_text(x1 + 20, y1 + 20, (menu_index == 0 ? "> " : "  ") + "Save");
    draw_text(x1 + 20, y1 + 40, (menu_index == 1 ? "> " : "  ") + "Cancel");
}
