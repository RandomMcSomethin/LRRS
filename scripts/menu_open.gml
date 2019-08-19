///menu_open(menu object, [menu state])
var menuObj = argument[0];
if (argument_count > 1) var menustate = argument[1];
else var menustate = 1;
if (!instance_exists(menuObj)) actualMenuObj = instance_create(x, y, menuObj);
else actualMenuObj = instance_nearest(x, y, menuObj);
actualMenuObj.menuState = menustate;
menuState = 0;
return actualMenuObj;
