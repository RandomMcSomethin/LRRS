///drawHUDElements()
if instance_exists(obj_levelcompletemenu) exit;
var o = room_width/2; //Offset
//BG box
draw_rectangle_colour(room_width/2, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_rectangle_colour(room_width/2, -room_height/2, room_width*2, room_height*2, c_white, c_white, c_white, c_white, true);
//Health bar
draw_set_color(c_lime);
draw_set_font(font_gamefont);
draw_set_halign(fa_middle);
draw_text(o + room_width/4, 5, "Ship Information:");
draw_set_font(font_menufont);
draw_set_halign(fa_left);
draw_text(o + 25, 20, "Ship condition: " + string(round(hp*100)) + "%");
//draw_text(o + 25, 20, instance_number(obj_peashooterbullet));
for (i = o + 25; i < o + 25 + hp * 100; i += 10) {
    draw_rectangle(i, 30, i + 8, 35, true);
}
//Focus bar
draw_set_color(c_yellow);
draw_text(o + 25, 40, "Charge meter: " + string(round(charge*100)) + "%");
for (i = o + 25; i < o + 25 + charge * 100; i += 10) {
    draw_rectangle(i, 50, i + 8, 55, true);
}
//Weapon info
var spriteColor = $00FFFF;
if (element == 0) spriteColor = c_lime;
if (element == 1) spriteColor = $0088FF;
if (element == 2) spriteColor = $FF2222;
if (element == 3) spriteColor = $FFFF00;
draw_set_color(spriteColor);
draw_text(o + 25, 60, "Weapon Systems:");
draw_rectangle(o + 25, 70, o + 89, 134, true);
if (pow < maxPow) {
    draw_text(o + 26, 71, "Power: " + string(round(pow)));
} else draw_text(o + 26, 71, "Power: MAX");
var weaponName = 'Name Unknown';
if (weapon == 1) var weaponName = '"The Peashooter"';
if (weapon == 2) var weaponName = 'Energy Bullet';
if (weapon == 3) var weaponName = 'Scramble Thunder';
if (weapon == 4) var weaponName = getWeaponString(0, 2);
draw_text(o + 25, 135, weaponName);
draw_sprite_ext(weaponCardSprite, -1, o + 57, 106, 1, 1, 0, spriteColor, true);
//Power Info
draw_set_color(c_yellow);
if (pow >= maxPow) pow = maxPow;
draw_rectangle(o + 92, 70, o + 96, 90, true);
if (pow - floor(pow) != 0) {
    draw_rectangle(o + 92, 90 - ((pow - floor(pow))*20), o + 96, 90, false);
}
//Metal
draw_set_color(c_white);
draw_text(o + 25, 150, "Metal: " + string(SAVE_MAP[? "Metal"]));
//Systems info
draw_set_color(c_red);
draw_text(o + 150, 20, "Systems:");
draw_rectangle(o + 150, 30, o + 250, 134, true);
draw_sprite(spr_winghud, lwing, o + 170, 110);
if (lwing == 0) draw_text(o + 160, 120, "Online");
if (lwing == 1) draw_text(o + 160, 120, "Offline");
draw_sprite_ext(spr_winghud, rwing, o + 230, 110, -1, 1, 0, c_white, 1);
if (rwing == 0) draw_text(o + 200, 120, "Online");
if (rwing == 1) draw_text(o + 200, 120, "Offline");
draw_sprite(spr_hullhud, hull, o + 200, 102);
if (hull == 0) draw_text(o + 160, 72, "Online");
if (hull == 1) draw_text(o + 160, 72, "Offline");
draw_sprite(spr_weaponsystemhud, weaponsys, o + 200, 50);
if (weaponsys == 0) draw_text(o + 180, 62, "Online");
if (weaponsys == 1) draw_text(o + 180, 60, "Offline");
//Dialogue system
draw_set_color(c_white);
draw_rectangle(o + 10, 195, o + 250, 250, true);
draw_text_ext(o + 20, 200, dispText, 3 + font_get_size(font_menufont), 230);
//Interference effect
if (hull == 1 || stunned == 1 || MANAGER.isSnowy == true) {
    randomize();
    draw_set_color(c_white);
    draw_set_alpha(random_range(0.3, 0.5));
    draw_sprite(spr_uiinterference, choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), o + 128, 128);
    draw_set_alpha(0.5);
    draw_line(o, scanlineTimer, o + 256, scanlineTimer);
    draw_set_alpha(1);
}
//Overlay
shader_set(shader_paletteswap);
texture_set_stage(pSSampler, palettes);
shader_set_uniform_f(v_offset, v_normal);
draw_sprite(spr_overlay, -1, room_width*(3/4), room_height/2);
shader_reset();
