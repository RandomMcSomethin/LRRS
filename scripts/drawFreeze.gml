///drawFreeze()
for (i = 0; i < frozen*3; i++) { //Ice effect
    //debug()
    draw_sprite_ext(spr_icecrystals, ceil(frozen*3) - 1, x, y, 1, 1, i*120, c_white, 1);
}
