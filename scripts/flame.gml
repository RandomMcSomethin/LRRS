///flame([x, y, color])
var X = x;
var Y = y;
var color = c_orange;
if (argument_count >= 2) {
    X = argument[0];
    Y = argument[1];
}
if (argument_count == 3) {
    color = argument[2];
}
var Sname = SNAME;
pt_flame = part_type_create();
part_type_shape(pt_flame,pt_shape_disk);
part_type_size(pt_flame,0.2,0.25,-0.005,0);
part_type_scale(pt_flame,1,1);
part_type_color1(pt_flame,color);
part_type_alpha2(pt_flame,1,0);
part_type_speed(pt_flame,0.1,0.2,0,0);
part_type_direction(pt_flame,0,359,0,0);
part_type_gravity(pt_flame,0.05,90);
part_type_blend(pt_flame,1);
part_type_life(pt_flame,15,30);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,X - 5,X + 5,Y - 5,Y + 5,ps_shape_ellipse,1);
part_emitter_burst(Sname,emitter1,pt_flame,3);

part_emitter_destroy(SNAME, emitter1);
