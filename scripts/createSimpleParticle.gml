///createSimpleParticle(shape, size, lifeMin, lifeMax, color)
var shape = argument[0];
var size = argument[1];
var lifeMin = argument[2];
var lifeMax = argument[3];
var color = argument[4];
var part = part_type_create(); 
part_type_shape(part, shape);
part_type_size(part, size, size, 0, 0);
part_type_life(part, lifeMin, lifeMax);
part_type_color1(part, color);
return part;
