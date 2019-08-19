///levelIcon(x, y, level, array number, connection #1, connection #2, name, [selected])
//Generates a level icon and stuff
var X = argument[0];
var Y = argument[1];
var lvl = argument[2];
var arrayNum = argument[3];
var c1 = argument[4]; 
var c2 = argument[5];
var txt = argument[6];
var l = instance_create(X * 32, Y * 32, prt_level);
if (argument_count > 7) var sel = argument[7]; else var sel = false;
l.prev = c1;
l.next = c2;
l.level = lvl;
l.num = arrayNum;
l.text = txt;
l.selected = sel;
return l;
