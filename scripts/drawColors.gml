///drawColors()
draw_set_color(c_white);
draw_set_font(font_gamefont);
draw_set_halign(fa_left);
var shipName = "Spray Paints:";
draw_text(10, 10, shipName);
var shipSprite = -1;
if (SAVE_MAP[? "Ship"] == 1) var shipSprite = spr_redship1;
if (SAVE_MAP[? "Ship"] == 2) var shipSprite = spr_shooterplayer;
shader_set(shader_paletteswap);
var pSSampler = shader_get_sampler_index(shader_paletteswap, "Palette");
var palettes = background_get_texture(bg_shippalettes);
texture_set_stage(pSSampler, palettes);
shader_set_uniform_f(shader_get_uniform(shader_paletteswap, "offset"), SAVE_MAP[? "Color"]/256);
if (shipSprite != -1) draw_sprite_ext(shipSprite, 0, 20 + sprite_get_width(shipSprite), room_height/2, 2, 2, 0, c_white, 1);
shader_reset();
