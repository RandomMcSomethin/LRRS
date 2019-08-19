///drawWeaponShop()
draw_set_color(c_white);
draw_set_font(font_gamefont);
draw_set_halign(fa_left);
// Cost -------------------------------------------------------------------
var cost = "";
if (obj_weaponshopmenu.selected == 1) var cost = getWeaponString(3, 1);
if (obj_weaponshopmenu.selected == 2) var cost = getWeaponString(3, 2);
draw_text(10, 25, cost);
// Sprite -------------------------------------------------------------------
var cardSprite = -1;
if (obj_weaponshopmenu.selected == 1) var cardSprite = 1;
if (obj_weaponshopmenu.selected == 2) var cardSprite = 2;
draw_background_part(bg_logs3, 0, 0, room_width/2, 14 + sprite_get_width(spr_shopcards)*2 + sprite_get_height(spr_shopcards)*2, 0, 0);
if (cardSprite != -1) draw_sprite_ext(spr_shopcards, cardSprite, 20 + sprite_get_width(spr_shopcards), room_height/2, 2, 2, 0, c_white, 1);
draw_set_font(font_menufont);
draw_set_halign(fa_left);
// Name -------------------------------------------------------------------
var wepName = "Please select a Weapon.";
if (obj_weaponshopmenu.selected == 1) var wepName = getWeaponString(0, 1);
if (obj_weaponshopmenu.selected == 2) var wepName = getWeaponString(0, 2);
draw_text(10, 10, wepName);
// Description -------------------------------------------------------------------
var wepDesc = "";
if (obj_weaponshopmenu.selected == 1 && getSaveItem(LEVELS, 0) == 1) var wepDesc = getWeaponString(2, 1);
else if (obj_weaponshopmenu.selected == 1) var wepDesc = "Beat Level 1 to#unlock this weapon.";
if (obj_weaponshopmenu.selected == 2 && getSaveItem(LEVELS, 1) == 1) var wepDesc = getWeaponString(2, 2);
else if (obj_weaponshopmenu.selected == 2) var wepDesc = "Beat Level 2 to#unlock this weapon.";
draw_text(20, room_width/4, wepDesc);
