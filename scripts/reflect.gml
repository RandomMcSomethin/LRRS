///reflect();
var bullet = collision_circle(x, y, grazeRadius, prt_bulletreflectable, false, true);
if (bullet != noone && bullet.faction != faction) {
    bullet.faction = 1;
    bullet.xspeed = -bullet.xspeed;
    bullet.yspeed = -bullet.yspeed;
    bullet.damage = 1;
    bullet.lifeTime = 600;
}
