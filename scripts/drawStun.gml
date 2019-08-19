///drawStun()
for (i = 0; i < stunned*3; i++) //Stun effect
{
    draw_line_colour(x + sprite_width/2 - random_range(0, sprite_width), y + sprite_height/2 - random_range(0, sprite_height), x + sprite_width/2 - random_range(0, sprite_width), y + sprite_height/2 - random_range(0, sprite_height), c_aqua, c_aqua);
}
