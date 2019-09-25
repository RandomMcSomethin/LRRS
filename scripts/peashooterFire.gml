///peashooterFire()
randomize();
var p_peashooter = part_type_create(); 
part_type_color_rgb(p_peashooter, 0, 0, 255, 255, 50, 50); 
part_type_direction(p_peashooter, 0, 360, 0, 0);
part_type_life(p_peashooter, 10, 15);
part_type_gravity(p_peashooter, 0.07, 270);
part_type_alpha3(p_peashooter, 1, 1, 0);
part_type_speed(p_peashooter, 0.5, 0.8, 0, 0);
part_type_sprite(p_peashooter, spr_pixel, false, false, false);
var p_flare = createSimpleParticle(pt_shape_flare, 0.2, 5, 7, c_white);
part_type_alpha3(p_flare, 1, 1, 0);
part_type_size(p_flare, 0.2, 0.3, -0.04, 0);
//Base Weapon:
if (flag[0] != weaponTimer) {
    if (pow == 0) {
        if ((weaponTimer mod 10 == 0 || weaponTimer == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height/2, obj_peashooterbullet);
            b.yspeed = -5;
            b.xspeed = random_range(-0.2, 0.2);
            part_particles_create(SNAME, x, y - sprite_height/2, p_peashooter, 3);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            playSFX(snd_playerpew);
            if (weaponTimer >= 20) {
                weaponTimer = -20;
            }
        }
    }
    //Power: 1
    if (pow == 1) {
        if ((weaponTimer mod 10 == 0 || weaponTimer == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height/2, obj_peashooterbullet);
            b.yspeed = -5;
            b.xspeed = random_range(-0.1, 0.1);
            part_particles_create(SNAME, x, y - sprite_height/2, p_peashooter, 4);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 2);
            playSFX(snd_playerpew);
            if (weaponTimer >= 20) {
                weaponTimer = 0;
            }
        }
    }
    //Power: 2
    if (pow == 2) {
        if (weaponTimer == 0) {
            b = instance_create(x - 2, y - sprite_height/2, obj_peashooterbullet);
            b.yspeed = -5;
            b.xspeed = 0;
            part_particles_create(SNAME, x, y - sprite_height/2, p_peashooter, 2);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            playSFX(snd_playerpew);
            if (weaponTimer > 5) {
                weaponTimer = 0;
            }
        }
        if (weaponTimer >= 5) {
            b = instance_create(x + 2, y - sprite_height/2, obj_peashooterbullet);
            b.yspeed = -5;
            b.xspeed = 0;
            part_particles_create(SNAME, x, y - sprite_height/2, p_peashooter, 2);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 1);
            playSFX(snd_playerpew);
            if (weaponTimer > 5) {
                weaponTimer = -5;
            }
        }
    }
    //Power: 3
    if (pow == 3) {
        if ((weaponTimer mod 8 == 0 || weaponTimer == 0) && weaponTimer >= 0) {
            b = instance_create(x, y - sprite_height/2, obj_peashooterbullet);
            b.yspeed = -5;
            b.xspeed = -1;
            b = instance_create(x, y - sprite_height/2, obj_peashooterbullet);
            b.yspeed = -5;
            b.xspeed = 0;
            b = instance_create(x, y - sprite_height/2, obj_peashooterbullet);
            b.yspeed = -5;
            b.xspeed = 1;
            part_particles_create(SNAME, x, y - sprite_height/2, p_peashooter, 4);
            part_particles_create(SNAME, x, y - sprite_height/2, p_flare, 2);
            playSFX(snd_playerpew);
            if (weaponTimer >= 20) {
                weaponTimer = 0;
            }
        }
    }
}
flag[0] = weaponTimer;
weaponTimer = round(weaponTimer) + moveFactor;
