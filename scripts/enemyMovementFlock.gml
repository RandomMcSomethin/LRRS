///enemyMovementFlock([pointDirection])
//Boids!
if (argument_count > 0) var pD = argument[0];

//-----------Decide what to do
if (collision_circle(x, y, sightRadius/3, obj_boid, false, true)) {
    behavior = 3;
} else if (collision_circle(x, y, sightRadius/2, obj_boid, false, true)) {
    behavior = 2;
} else {
    behavior = 1;
}

//---------Sense the boids
boid = collision_circle(x, y, sightRadius, obj_boid, false, true);

//---------Avoid the boids
if (boid != noone) { //Check for nearest boid
    //Steer away!
    if (pointDirection <= point_direction(x, y, boid.x, boid.y)) {
        pointDirection -= 3*behavior*moveFactor;
    } 
    if (pointDirection > point_direction(x, y, boid.x, boid.y)) {
        pointDirection += 3*behavior*moveFactor;
    } 
}
//Also wouldn't hurt to steer away from the edges of the screen
if (x > room_width - sprite_width*2) {
    if (pointDirection < point_direction(x, y, room_width, y)) {
        pointDirection -= 10*moveFactor;
    } 
    if (pointDirection >= point_direction(x, y, room_width, y)) {
        pointDirection += 10*moveFactor;
    } 
}
if (x < sprite_width*2) {
    if (pointDirection < point_direction(x, y, 0, y)) {
        pointDirection -= 10*moveFactor;
    } 
    if (pointDirection >= point_direction(x, y, 0, y)) {
        pointDirection += 10*moveFactor;
    } 
}
if (y > room_height - sprite_height*2) {
    if (pointDirection < point_direction(x, y, x, room_height)) {
        pointDirection -= 10*moveFactor;
    } 
    if (pointDirection >= point_direction(x, y, x, room_height)) {
        pointDirection += 10*moveFactor;
    } 
}
if (y < sprite_height*2) {
    if (pointDirection < point_direction(x, y, x, 0)) {
        pointDirection -= 10*moveFactor;
    } 
    if (pointDirection >= point_direction(x, y, x, 0)) {
        pointDirection += 10*moveFactor;
    } 
}

boid = collision_circle(x, y, sightRadius, obj_boid, false, true);

//-------------Stay towards the center of the boids
//Reset these variables:
centerX = 0;
centerY = 0;
boidIndex = 0;
boids = 0;
if (boid != noone) { //Check for nearest boid
    //Find center
    //To do that, we must check for boids within the sight radius:
    for (i = 0; i < instance_number(obj_boid); i++) {
        //And so we add all of the boids to an array
        //But only the closest boids:
        var b = instance_find(obj_boid, i);
        if (distance_to_object(b) <= sightRadius) {
            boids[boidIndex] = b;
            boidIndex++;
            //Now we average their coordinates:
            centerX = centerX + boids[boidIndex - 1].x;
            centerY = centerY + boids[boidIndex - 1].y;
        }
    }
    //Divide the center coords by the number of boids
    centerX = centerX/array_length_1d(boids);
    centerY = centerY/array_length_1d(boids);
    //And now point towards that center:
    if (pointDirection < point_direction(x, y, centerX, centerY)) {
        pointDirection += moveFactor;
    } 
    if (pointDirection > point_direction(x, y, centerX, centerY)) {
        pointDirection -= moveFactor;
    } 
}

//------------Align with the boids
if (boid != noone) { //Check for nearest boid
    //A l i g n 
    if (pointDirection <= boid.pointDirection) {
        pointDirection += 2*moveFactor;
    } 
    if (pointDirection > boid.pointDirection) {
        pointDirection += 2*moveFactor;
    } 
}

//---------------Updating movement!
//setDirSpeed(pointDirection, moveFactor);
if (attackTimer > 0) attackTimer += moveFactor;
