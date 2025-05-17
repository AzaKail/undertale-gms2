if (menu_state == "main") {
    draw_set_font(fnt_menu); // используем шрифт Undertale
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    var cx = display_get_gui_width() / 2;
    var cy = display_get_gui_height() / 2;

    for (var i = 0; i < array_length(menu_options); i++) {
        var yy = cy + i * 40;

        if (i == menu_choice) {
            draw_set_color(c_yellow); // выбранный пункт — золотой
        } else {
            draw_set_color(c_white);
        }

        draw_text(cx, yy, string(menu_options[i]));
    }
}
