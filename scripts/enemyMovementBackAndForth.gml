///enemyMovementBackAndForth()

//Timer
attackTimer += moveFactor;

//Walk forward after a while
//But only if there's nothing ahead
if (!collision_line(x, y, x + 20*(-image_xscale), y, obj_wall, true, true)) {
    if (ceil(attackTimer) >= 120 + irandom(50)) {
        sprite_index = walkspr;
        xspeed = -image_xscale/2;
    }
} else {
    attackTimer = 0;
    image_xscale *= -1;
    sprite_index = idlespr;
    xspeed = 0;
}
