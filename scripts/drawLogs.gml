///drawLogs()
if (instance_exists(obj_enemylogsmenu)) {
    draw_set_color(c_black);
    draw_set_font(font_gamefont);
    draw_set_halign(fa_left);
    draw_text(10, 50, logName);
    if (logSprite != -1) draw_sprite_ext(logSprite, 0, 20 + sprite_get_width(logSprite), room_height/2, 2, 2, 0, c_white, 1);
    draw_set_font(font_menufont);
    draw_set_halign(fa_left);
    draw_text_ext(20, 200, logDisc, 3 + font_get_size(font_menufont), 240);
    if (logHeight != "") draw_text(room_width/4, 128, "Height: " + logHeight);
    if (logWeight != "") draw_text(room_width/4, 138, "Weight: " + logWeight);
    if (obj_enemylogsmenu.opened == false) {
        draw_set_font(font_gamefont);
        draw_text(room_width/2, 20, "[" + chr(KEY_SHOOT) + "]: Open Menu");
    }
}
