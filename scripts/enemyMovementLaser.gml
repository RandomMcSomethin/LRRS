///enemyMovementLaser(x, y, angle)
var X = argument[0];
var Y = argument[1];
var angle = argument[2];
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
//Charges after 0.25 seconds of being still
if (attackTimer >= 60 && flag[0] == 0) {
    playSFX(snd_alarm);
    image_speed = 0.6;
    beamTimer = 100;
    flag[0] = 1;
}
//Charging
if (attackTimer > 0 && attackTimer < 90 && instance_exists(target)) { pointDirection = angle;
    
}
if (attackTimer > 90 && attackTimer < 100) {
    if (image_xscale > 0.5) { image_xscale -= 0.05; }
}
//Fire beam
if (ceil(attackTimer >= 100) && flag[1] == 0) {
    event_user(EV_SHOOT);
    image_speed = 0.3;
    flag[1] = 1;
}
if (flag[2] == 1) {
    if (instance_exists(beam)) instance_destroy(beam);
    if (yspeed > -moveSpeed) { 
        yspeed -= acceleration;
    }
    if (xspeed < moveSpeed) { 
        xspeed += acceleration;
    }
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
}
if (attackTimer > 0) attackTimer += moveFactor;
