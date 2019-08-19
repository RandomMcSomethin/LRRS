///drawShipsShop()
draw_set_color(c_white);
draw_set_font(font_gamefont);
draw_set_halign(fa_left);
// Name -------------------------------------------------------------------
var shipName = "Please select a ship.";
if (obj_shipshopmenu.selected == 1) var shipName = getShipString(0, 1);
draw_text(10, 10, shipName);
// Cost -------------------------------------------------------------------
var cost = "";
if (obj_shipshopmenu.selected == 1) var cost = getShipString(1, 1);
draw_text(10, 25, cost);
// Sprite -------------------------------------------------------------------
var shipSprite = -1;
if (obj_shipshopmenu.selected == 1) var shipSprite = spr_shooterplayer;
shader_set(shader_paletteswap);
var pSSampler = shader_get_sampler_index(shader_paletteswap, "Palette");
var palettes = background_get_texture(bg_shippalettes);
texture_set_stage(pSSampler, palettes);
shader_set_uniform_f(shader_get_uniform(shader_paletteswap, "offset"), SAVE_MAP[? "Color"]);
if (shipSprite != -1) draw_sprite_ext(shipSprite, 0, 20 + sprite_get_width(shipSprite), room_height/2, 2, 2, 0, c_white, 1);
shader_reset();
draw_set_font(font_menufont);
draw_set_halign(fa_left);
// Description -------------------------------------------------------------------
var shipDesc = "";
if (obj_shipshopmenu.selected == 1 && SAVE_MAP[? "Shooter Unlocked"] == 1) var shipDesc = getShipString(2, 1);
else if (obj_shipshopmenu.selected == 1) var shipDesc = "Destroy 15 Shooters to#unlock this ship.";
draw_text(20, 160, shipDesc);
// Special -------------------------------------------------------------------
var special = "";
if (obj_shipshopmenu.selected == 1) var special = getShipString(3, 1);
draw_text(10, 40, special);
// Special Description -------------------------------------------------------------------
var specialDesc = "";
if (obj_shipshopmenu.selected == 1) var specialDesc = getShipString(4, 1);
draw_text(10, 50, specialDesc);
