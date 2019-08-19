///toast(text)
var text = argument[0];
var t = instance_create(-room_width*2, room_height/8, prt_toast);
t.text = text;
return t;
