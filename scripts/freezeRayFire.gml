///freezeRayFire()
randomize();
var p_flare = createSimpleParticle(pt_shape_flare, 0.2, 5, 7, c_white);
part_type_alpha3(p_flare, 1, 1, 0);
part_type_size(p_flare, 0.2, 0.3, -0.04, 0);
//Base Weapon:
if (flag[0] != weaponTimer) {
    if (pow >= 0) {
        if ((ceil(weaponTimer) mod 20 == 0 || floor(weaponTimer) == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height*0.3, obj_freezeraybeam);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            playSFX(snd_pew);
            if (weaponTimer >= 40) {
                weaponTimer = -20;
            }
        }
    }
}
flag[0] = weaponTimer;
weaponTimer = round(weaponTimer) + moveFactor;
