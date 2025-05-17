if (menu_state == "main") {
    draw_sprite(spr_menu_bg, 0, 0, 0); // фон, если есть

    draw_set_font(fnt_menu);
    draw_set_halign(fa_left); // <-- выравнивание по левому краю
    draw_set_valign(fa_middle);

    var margin = 20; // отступ от краёв
    var start_x = margin; // левый край
    var start_y = display_get_gui_height() - (array_length(menu_options) * 40) - margin;

    for (var i = 0; i < array_length(menu_options); i++) {
        var yy = start_y + i * 40;

        if (i == menu_choice) {
            var alpha = 0.6 + 0.4 * sin(pulse);
            draw_set_color(c_yellow);
            draw_set_alpha(alpha);
        } else {
            draw_set_color(c_white);
            draw_set_alpha(1);
        }

        draw_text(start_x, yy, string(menu_options[i]));
    }

    draw_set_alpha(1); // сброс всего
}

if (menu_state == "submenu") {
    draw_set_font(fnt_menu);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);

    var sx = 20;
    var sy = display_get_gui_height() - 120;

    for (var i = 0; i < array_length(submenu_options); i++) {
        var yy = sy + i * 40;

        if (i == submenu_choice) {
            var alpha = 0.6 + 0.4 * sin(pulse);
            draw_set_color(c_yellow);
            draw_set_alpha(alpha);
        } else {
            draw_set_color(c_white);
            draw_set_alpha(1);
        }

        draw_text(sx, yy, submenu_options[i]);
    }

    draw_set_alpha(1);
}
