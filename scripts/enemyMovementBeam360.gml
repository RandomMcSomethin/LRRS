///enemyMovementBeam360()
var X = room_width/4;
var Y = room_height/2;
if (MANAGER.gOTimer >= 0) attackTimer = 600; //Quick Game Over fix
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
//Charges after 1 seconds of being still
if (ceil(attackTimer == 60) && flag[0] == 0) {
    playSFX(snd_charge);
    image_speed = 0.6;
    beamTimer = 120;
    flag[0] = 1;
}
//Charging
if (attackTimer > 0 && attackTimer < 600 && instance_exists(target)) { pointDirection = angle;
    flag[0] = 0;
}
if (attackTimer > 120 && attackTimer < 180) {
    if (image_xscale > 0.5) { image_xscale -= 0.05; }
}
//Fire beam
if (ceil(attackTimer == 180) && flag[0] == 0) {
    event_user(EV_SHOOT);
    image_speed = 0.3;
    flag[0] = 1;
}
if (instance_exists(beam)) {
    flag[0] = 0;
    if (attackTimer > 180 && attackTimer < 360) {
        angle += 1;
        if (attackTimer > 225 && attackTimer < 320) angle += 1;
        if (attackTimer > 270 && attackTimer < 340) angle += 1;
        beam.x = x + lengthdir_x((sprite_width)/2, angle);
        beam.y = y + lengthdir_y(sprite_height/2, angle);
        beam.image_angle = image_angle;
    }
    if (attackTimer > 360 && attackTimer < 540) {
        angle -= 1;
        if (attackTimer > 405 && attackTimer < 500) angle -= 1.5;
        if (attackTimer > 450 && attackTimer < 520) angle -= 2;
        beam.x = x + lengthdir_x((sprite_width)/2, angle);
        beam.y = y + lengthdir_y(sprite_height/2, angle);
        beam.image_angle = image_angle;
    }
    if (attackTimer > 540) {
        if (instance_exists(beam)) instance_destroy(beam);
        if (yspeed > -moveSpeed) { 
            yspeed -= acceleration;
        }
        if (xspeed < moveSpeed) { 
            xspeed += acceleration;
        }
        pointDirection = point_direction(x, y, x + xspeed, y + yspeed);
    }
}
if (attackTimer > 0) attackTimer += moveFactor;
