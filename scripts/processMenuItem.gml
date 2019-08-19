///processMenuItem(menu item number, category, number, [purchase text, unlock condition, cost])
var item = argument[0];
var cat = argument[1];
var num = argument[2];
var purchaseText = "";
var unlockCondition = -1;
var cost = -1;
if (argument_count > 3) purchaseText = argument[3];
if (argument_count > 4) unlockCondition = argument[4];
if (argument_count == 5) cost = argument[5];
if (cost != -1) { //Buying
    if (menuItem[selected] != -1) {
        if (selected == item && unlockCondition != 0) {
            if (buy(cat, num, cost)) { playSFX(snd_menuconfirm); 
                if (purchaseText != "") {
                    t = instance_create(-room_width*2, room_height/8, prt_toast);
                    t.text = purchaseText;
                }
                menuItem[item] = -1;
            } //else playSFX(snd_hit);
        }
    }
} else { //Unlocking
    if (menuItem[selected] != -1) {
        if (selected == item && (unlockCondition == -1 || unlockCondition == 1)) {
            if (unlock(cat, num)) { playSFX(snd_menuconfirm); 
                if (purchaseText != "") {
                    t = instance_create(-room_width*2, room_height/8, prt_toast);
                    t.text = purchaseText;
                }
                menuItem[item] = -1;
            } else playSFX(snd_hit);
        }
    }
}
