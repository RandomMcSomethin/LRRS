///entityHandleElec()
//Electricity
if (stunLength == -1) stunLength = stunChance;
if (stunned) { moveFactor = 0; }
if (stunTimer > 0) {
    stunTimer -= 1;
} else stunned = 0;
