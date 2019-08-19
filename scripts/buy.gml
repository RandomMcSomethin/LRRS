///buy(item category, item number, price)
var itemCat = argument[0];
var itemNum = argument[1];
var price = argument[2];
var canBuy = SAVE_MAP[? "Metal"] >= price;
if (canBuy) {
    unlock(itemCat, itemNum);
    SAVE_MAP[? "Metal"] -= price;
    ini_open("save.ini");
    ini_write_real("Save", "Metal", SAVE_MAP[? "Metal"]);
    ini_close();
}
return canBuy;
