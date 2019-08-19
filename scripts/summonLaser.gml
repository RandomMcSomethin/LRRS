///summonLaser(time, angle, x)
var time = argument[0];
var angle = argument[1];
var X = argument[2];
var Y = -50;
if (attackTimer == time) {
            b = instance_create(X, Y, obj_beamer);
            b.movePattern = 1;
            b.destY = -50;
            b.canHit = 0;
            b.angle = angle;
            b.image_alpha = 0;
        }
