///entityHandleIce()
moveFactor = 1 - frozen; //Ice
if (freezeTimer > 0) {
    freezeTimer -= 1;
} else if (frozen > 0) { frozen -= 0.01; } else { frozen = 0; }
if (frozen > 1) frozen = 1;
