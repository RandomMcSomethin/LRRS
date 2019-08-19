///enemyMovementPoint(x, y)
var X = argument[0];
var Y = argument[1];
//Messy motion on the Y axis code
if (y < Y - moveSpeed && yspeed < moveSpeed) {
    yspeed += acceleration;
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
} else if (y > Y + moveSpeed && yspeed > -moveSpeed) { yspeed -= acceleration; }  
 else { yspeed = yspeed/moveSpeed; }
if (yspeed == 0 && xspeed == 0 && attackTimer = 0) attackTimer += moveFactor;
//Messy motion on the X axis code
if (x < X - moveSpeed && xspeed < moveSpeed) {
    xspeed += acceleration;
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
} else if (x > X + moveSpeed && xspeed > -moveSpeed) { xspeed -= acceleration; }  
else { xspeed = xspeed/moveSpeed; }  
if (xspeed == 0 && yspeed == 0 && attackTimer = 0) attackTimer += moveFactor;
//Shoots after 2 seconds of being still
if (ceil(attackTimer) == 120 && flag[0] == 0) {
    event_user(EV_SHOOT);
    flag[0] = 1;
}
if (attackTimer > 240) {
    if (yspeed > -moveSpeed) { 
        yspeed -= acceleration;
    }
    if (xspeed < moveSpeed) { 
        xspeed += acceleration;
    }
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
}
if (attackTimer > 0 && attackTimer < 240 && instance_exists(target)) pointDirection = point_direction(x, y, target.x, target.y);
if (attackTimer > 0) attackTimer += moveFactor;
