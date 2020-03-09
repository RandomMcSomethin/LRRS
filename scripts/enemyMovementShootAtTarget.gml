///enemyMovementShootAtTarget()

//Timer
attackTimer += moveFactor;

//Point up
if (targetPosY < y - 20) {
    sprite_index = aimuspr;
} else { //Point forwards
    sprite_index = aimfspr;
}

//shoooooooot
if (attackTimer mod 20 == 0) {
    if (attackTimer > (60 + irandom(30))) {
        attackTimer = 0;
        event_user(EV_SHOOT);
    }
}
