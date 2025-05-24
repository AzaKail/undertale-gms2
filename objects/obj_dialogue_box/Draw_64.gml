if (active) {
	draw_set_font(fnt_menu);
	
    var w = 320;
    var h = 80;

    // Центр по горизонтали
    var x1 = (display_get_gui_width() - w) / 2;

    // Нижняя часть экрана
    var y1 = display_get_gui_height() - h - 16;

    draw_sprite(spr_dialogue_box, 0, x1, y1);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);

    draw_text(x1 + 10, y1 + 10, text_lines[line_index]);
}
