///dropMetals(amount)
var amount = argument[0];

if (amount != 0) {
    for (i = amount; amount mod 50 == 0 && amount > 0; amount -= 50) {
          m = instance_create(x, y, obj_metalbit);
          m.worth = 50;
    } 
    for (i = amount; amount mod 20 == 0 && amount > 0; amount -= 20) {
          m = instance_create(x, y, obj_metalbit);
          m.worth = 20;
    } 
    for (i = amount; amount mod 10 == 0 && amount > 0; amount -= 10) {
          m = instance_create(x, y, obj_metalbit);
          m.worth = 10;
    } 
    for (i = amount; amount mod 5 == 0 && amount > 0; amount -= 5) {
          m = instance_create(x, y, obj_metalbit);
          m.worth = 5;
    } 
    for (i = amount; amount mod 1 == 0 && amount > 0; amount -= 1) {
          m = instance_create(x, y, obj_metalbit);
          m.worth = 1;
    } 
}
