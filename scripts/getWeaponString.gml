///getWeaponString(type, weapon)
var type = argument[0];
var weapon = argument[1];
var str = "";
weaponStrings[0, 0] = "The Peashooter"; //Name
weaponStrings[1, 0] = "Type: Energy"; //Type
weaponStrings[2, 0] = "Shoots out low-damage energy blasts. The starter weapon."; //Description
weaponStrings[3, 0] = "M: 0"; //Cost
weaponStrings[0, 1] = "Scramble Thunder"; //Name
weaponStrings[1, 1] = "Type: Electricity"; //Type
weaponStrings[2, 1] = "Rapid-fire electric bolts: what's not to love?"; //Description
weaponStrings[3, 1] = "M: 70"; //Cost
weaponStrings[0, 2] = "Ice Cube"; //Name
weaponStrings[1, 2] = "Type: Ice"; //Type
weaponStrings[2, 2] = "Shoots projectiles that freeze enemies over time."; //Description
weaponStrings[3, 2] = "M: 120"; //Cost
str = weaponStrings[type, weapon];
return str;
