///enemyMovementBeam(x, y)
var X = argument[0];
var Y = argument[1];
//Messy motion on the Y axis code
if (y < Y - moveSpeed && yspeed < moveSpeed) {
    yspeed += acceleration;
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
} else if (y > Y + moveSpeed && yspeed > -moveSpeed) { yspeed -= acceleration; }  
 else { yspeed = yspeed/moveSpeed; }
if (yspeed == 0 && xspeed == 0 && attackTimer == 0) attackTimer += moveFactor;
//Messy motion on the X axis code
if (x < X - moveSpeed && xspeed < moveSpeed) {
    xspeed += acceleration;
    pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
} else if (x > X + moveSpeed && xspeed > -moveSpeed) { xspeed -= acceleration; }  
else { xspeed = xspeed/moveSpeed; }  
if (xspeed == 0 && yspeed == 0 && attackTimer == 0) attackTimer += moveFactor;
//Charges after 1 seconds of being still
if (attackTimer >= 60 && flag[0] == 0) {
    playSFX(snd_charge);
    image_speed = 0.6;
    beamTimer = 120;
    flag[0] = 1;
}
//Charging
if (attackTimer > 0 && attackTimer < 120 && instance_exists(target)) { pointDirection = point_direction(x, y, target.x, target.y);
    flag[0] = 0;
}
if (attackTimer > 120 && attackTimer < 180) {
    if (image_xscale > 0.5) { image_xscale -= 0.05; }
}
//Fire beam
if (ceil(attackTimer) >= 180 && flag[1] == 0) {
    event_user(EV_SHOOT);
    image_speed = 0.3;
    flag[1] = 1;
}
if (attackTimer > 300) {
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
