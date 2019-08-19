///entityHandleFire()
if (burnTimer > 0) { //Fire
    burnTimer -= 1;
    if (burning >= 1) fireColor = c_orange;
    if (burning >= 2) fireColor = c_yellow;
    if (burning >= 3) fireColor = c_white;
    if (burning >= 4) fireColor = c_aqua;
    if (burnTimer mod 10 == 0) {
        flame(x, y, fireColor);
    }
    if (burnTimer mod 40 == 0) {
        hp -= burning/100;
        playSFX(snd_burnhit);
        var p_ember1 = part_type_create(); 
        part_type_color1(p_ember1, $222222); 
        part_type_direction(p_ember1, 0, 360, 0, 0);
        part_type_life(p_ember1, 10, 15);
        part_type_gravity(p_ember1, 0.07, 270);
        part_type_alpha3(p_ember1, 1, 1, 0);
        part_type_speed(p_ember1, 0.5, 0.8, 0, 0);
        part_type_sprite(p_ember1, spr_pixel, false, false, false);
        part_particles_create(SNAME, x, y, p_ember1, choose(3, 4, 5));
        var p_ember2 = part_type_create(); 
        part_type_color1(p_ember2, fireColor); 
        part_type_direction(p_ember2, 0, 360, 0, 0);
        part_type_life(p_ember2, 10, 15);
        part_type_gravity(p_ember2, 0.07, 270);
        part_type_alpha3(p_ember2, 1, 1, 0);
        part_type_speed(p_ember2, 0.5, 0.8, 0, 0);
        part_type_sprite(p_ember2, spr_pixel, false, false, false);
        part_particles_create(SNAME, x, y, p_ember2, choose(1, 2, 3));
    }
} else burning = 0;

