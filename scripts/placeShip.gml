///placeShip()
var ship = obj_redship;
if (SAVE_MAP[? "Ship"] == 1) var ship = obj_redship;
if (SAVE_MAP[? "Ship"] == 2) var ship = obj_shooterplayer;
instance_create(room_width/4, room_height*7/8, ship);
return ship;
