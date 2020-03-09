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
} else { //If something is ahead, stop and turn around
    if (xspeed != 0) attackTimer = -90 - irandom(30);
    sprite_index = aimfspr;
    xspeed = 0;
    if (attackTimer == 0) {
        image_xscale *= -1;
    }
}


//Search for target
if (attackTimer mod 20 == 0) {
    if (searchForTarget(sightRadius, target, false)) { 
        attackTimer = 0;
        phase = 1;
        xspeed = 0;
    }
}

//Watch out for edges!
if (!canSeeTarget(sightRadius, obj_wall, 90 + 135*image_xscale, true)) {
    if (xspeed != 0) attackTimer = -90 - irandom(30);
    sprite_index = aimfspr;
    xspeed = 0;
    if (attackTimer == 0) {
        image_xscale *= -1;
    }
}
