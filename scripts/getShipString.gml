///getShipString(type, ship)
var type = argument[0];
var ship = argument[1];
var str = "";
shipStrings[0, 0] = "The Original"; //Name
shipStrings[1, 0] = "M: 0"; //Cost
shipStrings[2, 0] = "The titular Little Red Rocket Ship."; //Description
shipStrings[3, 0] = "Special: Plasma Bomb"; //Special
shipStrings[4, 0] = "At 100% charge, shoots out a plasma bomb#that destroys nearby bullets and#deals heavy damage to enemies,#minibosses, and bosses."; //Special Description
shipStrings[0, 1] = "Shooter"; //Name
shipStrings[1, 1] = "M: 300"; //Cost
shipStrings[2, 1] = "This reconstructed ship is#made from salvaged parts.#The cockpit is quite cramped#since this was originally#a drone.##-Weapon locked to 'Energy Bullet'"; //Description
shipStrings[3, 1] = "Special: Barrage"; //Special
shipStrings[4, 1] = "Uses charge as ammo to shoot#rapid-fire shots."; //Special Description
str = shipStrings[type, ship];
return str;
