///searchForTarget(sight radius, target, omniscience)
var sightRad = argument[0];
var sightTar = argument[1];
var omni = argument[2];
var found = false;

for (i = 0; i < 12; i++) {
   found = canSeeTarget(sightRad, target, 90 + i*10*image_xscale);
   if (found) break;
}
return found;
