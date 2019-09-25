///enemyMovementMultiShoot(shotCount)
var shotCount = argument[0];

if (y < room_height/4 && yspeed < moveSpeed) {
    yspeed += acceleration;
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
} else if (yspeed > 0) { yspeed -= acceleration; }  else if (yspeed == 0 && attackTimer == 0) attackTimer++;
if (ceil(attackTimer) == 120 && flag[0] == 0) {
    event_user(EV_SHOOT);
    flag[1]++;
    if (flag[1] < shotCount) { attackTimer = 90; } else flag[0] = 1;
}
if (attackTimer > 240) {
    if (yspeed > -moveSpeed) { 
        yspeed -= acceleration;
    }
    if (xspeed < moveSpeed) { 
        xspeed += acceleration;
    }
}
if (attackTimer > 0 && attackTimer < 240 && instance_exists(target)) pointDirection = point_direction(x, y, target.x, target.y);
if (attackTimer > 0) attackTimer += moveFactor;
