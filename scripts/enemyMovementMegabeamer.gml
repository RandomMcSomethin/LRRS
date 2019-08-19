///enemyMovementMegabeamer()
if (y < room_height/4 && yspeed < moveSpeed) {
    yspeed += acceleration;
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
} else if (yspeed > 0) { yspeed -= acceleration; }  else if (yspeed == 0 && attackTimer = 0) attackTimer++;
if (attackTimer > 0) attackTimer += moveFactor;
atmr = round(attackTimer);
