///statFX()
var color = c_white;
if (iF > 0) { 
    if armored == false { color = c_red; }
    else { color = make_color_rgb(255, 255, blendTimer);
        blendTimer += 255/iFrames;
    }
} else { color = c_white; blendTimer = 0; }
if (frozen > 0) {
    color = c_blue;
}
if (burning > 0) {
    color = c_orange;
}
return color;
