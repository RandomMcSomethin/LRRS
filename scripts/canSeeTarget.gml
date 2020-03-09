///canSeeTarget(sightRadius, target, angle, [xray])
var sightRad = argument[0];
var sightTar = argument[1];
var sightAngle = argument[2];
if (argument_count > 3) {
    var xray = argument[3];
} else {
    var xray = false;
}

    //Checks for a solid in the way (or just ignores it if xray is on)
if (!collision_line(x, y, x + lengthdir_x(sightRad, sightAngle), y + lengthdir_y(sightRad, sightAngle), obj_wall, true, true) || xray) {
    //Now looks for the target
    if (collision_line(x, y, x + lengthdir_x(sightRad, sightAngle), y + lengthdir_y(sightRad, sightAngle), sightTar, true, true)) {
        return true; //Saw target
    } else return false; //Returned false; cannot see target
} else return false; //Returned false; solid obstructing view
