///card(title, text, image)
var title = argument[0];
var text = argument[1];
var image = argument[2];
if (!instance_exists(prt_card)) { 
    c = instance_create(0, 0, prt_card);
    c.title = title;
    c.text = text;
    c.image = image;
    return c;
} else return -1;
