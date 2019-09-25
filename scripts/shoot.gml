///shoot(direction, speed)
var dir = argument[0];
var spd = argument[1];

xspeed = cos(degtorad(dir))*spd;
yspeed = -sin(degtorad(dir))*spd;
