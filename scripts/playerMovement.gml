///playerMovement()
if (!INPUT_LOCKED) {
    moveTimer++;
    if (hull == 1) {
        var mFactor = moveFactor*(2/3);
    } else var mFactor = moveFactor;
    if (!focus) {
        if (keyboard_check(KEY_DOWN)) {
            if (yspeed < moveSpeed*mFactor) { yspeed += moveSpeed*mFactor/acceleration; }
            else if (yspeed > moveSpeed*mFactor) yspeed = moveSpeed*mFactor;
        } else if (keyboard_check(KEY_UP)) {
            if (yspeed > -moveSpeed*mFactor) { yspeed -= moveSpeed*mFactor/acceleration; }
            else if (yspeed < -moveSpeed*mFactor) yspeed = -moveSpeed*mFactor;
        } else yspeed = 0;
        if (keyboard_check(KEY_LEFT)) {
            if (xspeed > -moveSpeed*mFactor) { xspeed -= moveSpeed*mFactor/acceleration; }
            else if (xspeed < -moveSpeed*mFactor) xspeed = -moveSpeed*mFactor;
        } else if (keyboard_check(KEY_RIGHT)) {
            if (xspeed < moveSpeed*mFactor) { xspeed += moveSpeed*mFactor/acceleration; }
            else if (xspeed > moveSpeed*mFactor) xspeed = moveSpeed*mFactor;
        } else xspeed = 0;
    } else {
        if (keyboard_check(KEY_DOWN)) {
            yspeed = moveSpeed;
        } else if (keyboard_check(KEY_UP)) {
            yspeed = -moveSpeed;
        } else yspeed = 0;
        if (keyboard_check(KEY_LEFT)) {
            xspeed = -moveSpeed;
        } else if (keyboard_check(KEY_RIGHT)) {
            xspeed = moveSpeed;
        } else xspeed = 0;
    }
    if (keyboard_check(KEY_FOCUS)) {
        focus = true;
    } else focus = false;
    if (lwing == 1) {
        xspeed += sin(moveTimer/32)/4 + 0.3;
    }
    if (rwing == 1) {
        xspeed -= sin(moveTimer/32)/4 + 0.3;
    }
}

x = clamp(x, 0 + sprite_width/2, room_width/2 - sprite_width/2);
y = clamp(y, 0 + sprite_height/2, room_height - sprite_height/2);
