if (active == true) {
	draw_set_font(fnt_menu);
	
    var w = 960;
    var h = 120;

    // Центр по горизонтали
    var x1 = (display_get_gui_width() - w) / 2;

    // Нижняя часть экрана
    var y1 = display_get_gui_height() - h - 16;

    draw_sprite_stretched(spr_dialogue_box, 0, x1, y1, w, h);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);

    draw_text_ext(x1 + 10, y1 + 10, text_lines[line_index], -1, w - 20);
}
