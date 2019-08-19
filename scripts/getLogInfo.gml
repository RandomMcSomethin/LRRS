///getLogInfo(number, object)
var num = argument[0];
var obj = argument[1];
MANAGER.logName = ds_grid_get(LOG_GRID, 0, num);
MANAGER.logSprite = object_get_sprite(obj);
MANAGER.logDisc = ds_grid_get(LOG_GRID, 1, num);
MANAGER.logHeight = ds_grid_get(LOG_GRID, 2, num);
MANAGER.logWeight = ds_grid_get(LOG_GRID, 3, num); 
