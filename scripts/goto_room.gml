///goto_room(room, transitionType)
var r = argument[0];
if (argument_count > 1) var transitionType = argument[1];
else var transitionType = 0;
if (transitionType == 0) room_goto(r);
else if (transitionType == 1) {
    t = instance_create(0, 0, obj_transitionfade);
    t.rm = r;
}
else if (transitionType == 2) {
    t = instance_create(0, 0, obj_transitionslide);
    t.rm = r;
}
INPUT_LOCKED = true;
