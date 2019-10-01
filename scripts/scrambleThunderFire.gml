///scrambleThunderFire()
randomize();
var p_scramble = part_type_create(); 
part_type_color_rgb(p_scramble, 0, 0, 255, 255, 255, 255); 
part_type_direction(p_scramble, 0, 360, 0, 0);
part_type_life(p_scramble, 10, 15);
part_type_gravity(p_scramble, 0.07, 270);
part_type_alpha3(p_scramble, 1, 1, 0);
part_type_speed(p_scramble, 0.5, 0.8, 0, 0);
part_type_sprite(p_scramble, spr_pixel, false, false, false);
var p_flare = createSimpleParticle(pt_shape_spark, 0.2, 5, 7, c_white);
part_type_alpha3(p_flare, 1, 1, 0);
part_type_size(p_flare, 0.2, 0.3, -0.04, 0);
var floorpow = floor(pow);
//Base Weapon:
if (flag[0] != weaponTimer) {
    if (floorpow == 0) {
        if ((weaponTimer mod 10 == 0 || weaponTimer == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -5;
            part_particles_create(SNAME, x, y - sprite_height/2, p_scramble, 2);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            playSFX(snd_scramblefiresmall);
        }
    }
    //Power: 1
    if (floorpow == 1) {
        if ((weaponTimer mod 12 == 0 || weaponTimer == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -5;
            b.xspeed = -1;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -5;
            b.xspeed = 0;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -5;
            b.xspeed = 1;
            part_particles_create(SNAME, x, y - sprite_height/2, p_scramble, 2);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            playSFX(snd_scramblefiresmall);
        }
    }
    //Power: 2
    if (floorpow == 2) {
        if ((weaponTimer mod 20 == 0 || weaponTimer == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -5;
            b.xspeed = -1;
            b = instance_create(x, y - sprite_height/2, obj_scrambleball);
            b.yspeed = -5;
            b.xspeed = 0;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -5;
            b.xspeed = 1;
            part_particles_create(SNAME, x, y - sprite_height/2, p_scramble, 2);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            playSFX(snd_scramblefire);
        }
    }
    //Power: 3
    if (floorpow == 3) {
        if ((weaponTimer mod 20 == 0 || weaponTimer == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -2;
            b.xspeed = -2;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -3;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = -2;
            b.xspeed = 2;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.xspeed = 3;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = 2;
            b.xspeed = 2;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = 3;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.yspeed = 2;
            b.xspeed = -2;
            b = instance_create(x, y - sprite_height/2, obj_scrambleneedle);
            b.xspeed = -3;
            part_particles_create(SNAME, x, y - sprite_height/2, p_scramble, 8);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            b = instance_create(x, y - sprite_height/2, obj_scrambleball);
            b.yspeed = -5;
            b.xspeed = 0;
            playSFX(snd_scramblefire);
        }
    }
}
flag[0] = weaponTimer;
weaponTimer = round(weaponTimer) + moveFactor;
