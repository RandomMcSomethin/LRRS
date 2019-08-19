///explosion([x, y])
var X = x;
var Y = y;
if (argument_count == 2) {
    X = argument[0];
    Y = argument[1];
}
var Sname = SNAME;
pt_explosion = part_type_create();
part_type_shape(pt_explosion,pt_shape_disk);
part_type_size(pt_explosion,0.10,0.10,0,0);
part_type_scale(pt_explosion,1,1);
part_type_color1(pt_explosion,8421504);
part_type_alpha2(pt_explosion,1,0);
part_type_speed(pt_explosion,1,1,0,0);
part_type_direction(pt_explosion,0,359,0,0);
part_type_gravity(pt_explosion,0.10,90);
part_type_blend(pt_explosion,1);
part_type_life(pt_explosion,15,30);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,X - 20,X + 20,Y - 20,Y + 20,ps_shape_ellipse,1);
part_emitter_burst(Sname,emitter1,pt_explosion,3);

part_emitter_destroy(SNAME, emitter1);

pt_flare = part_type_create();
part_type_shape(pt_flare,pt_shape_ring);
part_type_size(pt_flare,0.30,0.30,0,0.30);
part_type_scale(pt_flare,1,1);
part_type_color1(pt_flare,16777215);
part_type_alpha1(pt_flare,0.50);
part_type_blend(pt_flare,1);
part_type_life(pt_flare,25,30);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,X - 20,X + 20,Y - 20,Y + 20,ps_shape_ellipse,1);
part_emitter_burst(Sname,emitter1,pt_flare,3);

part_emitter_destroy(SNAME, emitter1);

pt_cloud1 = part_type_create();
part_type_shape(pt_cloud1,pt_shape_disk);
part_type_size(pt_cloud1,0.30,0.50,0,0.30);
part_type_scale(pt_cloud1,1,1);
part_type_color3(pt_cloud1,16777215,8454143,255);
part_type_speed(pt_cloud1,0.50,0.70,0,0);
part_type_direction(pt_cloud1,0,359,0,0);
part_type_gravity(pt_cloud1,0,270);
part_type_orientation(pt_cloud1,0,0,0,0,1);
part_type_blend(pt_cloud1,1);
part_type_life(pt_cloud1,10,15);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,X - 20,X + 20,Y - 20,Y + 20,ps_shape_ellipse,1);
part_emitter_burst(Sname,emitter1,pt_cloud1,7);

part_emitter_destroy(SNAME, emitter1);
screenShake(10, 0.3);


