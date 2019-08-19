///drawSelect()
if (instance_exists(obj_levelicons)) {
    draw_set_color(c_black);
    draw_set_font(font_gamefont);
    draw_set_halign(fa_left);
    draw_rectangle(0, 0, room_width, room_height/10, false);
    draw_rectangle(0, room_height, room_width, room_height - room_height/10, false);
    draw_set_color(c_white);
    draw_text(10, 10, "Level Select");
}
