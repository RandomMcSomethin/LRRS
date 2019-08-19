///grazeBonus()
var bullet = collision_circle(x, y, grazeRadius, prt_bullet, false, true);
if (bullet != noone && bullet.faction != faction && bullet.canHit != 0 && bullet.reflectable == 0) {
    graze++;
    draw_set_alpha(sin(graze));
    draw_line_colour(x, y, bullet.x, bullet.y, c_yellow, c_yellow);
    draw_circle_colour(x, y, grazeRadius, c_yellow, c_yellow, true);
    draw_set_alpha(1);
} else if (graze > 0) {
    charge += graze/100;
    var gb = graze;
    graze = 0;
    mTT = 60; 
    mTText = "+" + string(gb) + " graze bonus"; 
    if (charge > 1) charge = 1;
}
if (graze > 0) {
    draw_set_font(font_gamefont);
    draw_text_colour(x, y - sprite_width, "+" + string(graze) + " graze bonus", c_yellow, c_yellow, c_yellow, c_yellow, 1);
}
