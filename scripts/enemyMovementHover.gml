///enemyMovementHover()
if (y < room_height/4 && yspeed < moveSpeed) {
    yspeed += acceleration;
} else if (yspeed > 0) { yspeed -= acceleration; }  else if (yspeed == 0 && attackTimer = 0) attackTimer += moveFactor;
if (ceil(attackTimer) == 120 && flag[0] == 0) {
    event_user(EV_SHOOT);
    flag[0] = 1;
}
if (attackTimer > 240) {
    if (yspeed > -moveSpeed) { 
        yspeed -= acceleration;
    }
}
if (attackTimer > 0) attackTimer += moveFactor;
