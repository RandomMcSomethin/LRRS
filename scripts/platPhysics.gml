///platPhysics()

//Gravity
normalmaxgrav = 9.8;
maxgrav = normalmaxgrav;
g = maxgrav/20;
grounded = true;

//Collision
if (place_meeting(x+xspeed,y-1,obj_wall)) {
    while(!place_meeting(x+sign(xspeed),y - 1,obj_wall)) {
        x += sign(xspeed);
    }
    xspeed = 0;
}

grounded = false;
if (place_meeting(x, y + 1 + yspeed, obj_wall) && yspeed > -1) {
        grounded = true; 
}

//To prevent diagonal getting-stuck-ness
if (place_meeting(x, y - 1 + yspeed, obj_wall)) {
    yspeed = 0;
}

if (place_meeting(x,y+yspeed,obj_wall)) {
    while(!place_meeting(x,y+sign(yspeed),obj_wall)) {
        y += sign(yspeed);
    }
    yspeed = 0;
} else {
    if(yspeed < maxgrav) {
        yspeed += g;    
    }
}
