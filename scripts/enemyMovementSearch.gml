///enemyMovementSearch()

//Timer
attackTimer += moveFactor;

//Go forward a bit
if (attackTimer == 10) {
    xspeed = -image_xscale/2;
    sprite_index = walkspr;
}

if (attackTimer == 120) {
    xspeed = 0;
    sprite_index = aimfspr;
}

//Look back
if (attackTimer == 130) {
    image_xscale *= -1;
    //Search for target
    if (searchForTarget(sightRadius, target, false)) { 
        attackTimer = 0;
        phase = 1;
        xspeed = 0;
    }
}

//Look forward again
if (attackTimer == 140) {
    image_xscale *= -1;
    //Search for target
    if (searchForTarget(sightRadius, target, false)) { 
        attackTimer = 0;
        phase = 1;
        xspeed = 0;
    }
}

//Go to last known location of target
if (attackTimer == 180) {
    if (targetPosX > x) {
        image_xscale = -1;
    }
    if (targetPosX <= x) {
        image_xscale = 1;
    }
    xspeed = -image_xscale/2;
    sprite_index = walkspr;
}

//Once there, resume normal patrol
if (ceil(x) == ceil(targetPosX) && attackTimer >= 180) {
    xspeed = 0;
    phase = 0;
    attackTimer = 0;
    sprite_index = idlespr;
}

//Also do this if unsuccessful in going to the target's location
if (collision_line(x, y, x + 20*(-image_xscale), y, obj_wall, true, true) || !canSeeTarget(sightRadius, obj_wall, 90 + 135*image_xscale, true)) {
    xspeed = 0;
    phase = 0;
    image_xscale *= -1;
    attackTimer = 0;
    sprite_index = idlespr;
}
