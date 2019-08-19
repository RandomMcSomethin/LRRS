///entityPhysics()
x += xspeed*moveFactor*cos(radtodeg(facingDirection)) + yspeed*moveFactor*sin(radtodeg(facingDirection));
y += -xspeed*moveFactor*sin(radtodeg(facingDirection)) + yspeed*moveFactor*cos(radtodeg(facingDirection));
