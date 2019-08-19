///levelCompleted()
lCTimer++;
INPUT_LOCKED = true;
draw_set_alpha((1/60)*lCTimer);
draw_set_color(c_white);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_black);
draw_set_font(font_gamefont);
draw_text(20, 20, "Level Complete!");
draw_set_font(font_menufont);
draw_text(20, 40, "Metal: " + string(SAVE_MAP[? "Metal"]));
