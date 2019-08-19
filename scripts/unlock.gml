///unlock(item category, item number)
var itemCat = argument[0];
var currentCat = SHIPS;
var itemNum = argument[1];
    file_delete("save.txt");
    file = file_text_open_append("save.txt");
    for (c = 0; c < 5; c++) {
        if c == 0 currentCat = SHIPS 
        if c == 1 currentCat = WEAPONS 
        if c == 2 currentCat = ITEMS 
        if c == 3 currentCat = SPRAYS 
        if c == 4 currentCat = LEVELS;  
        for (i = 0; i < array_length_1d(currentCat); i++) {
            if (i == itemNum && itemCat == currentCat) {
                    currentCat[i] = 1;
                }
                file_text_write_real(file, currentCat[i]);
        }
        file_text_writeln(file);
    }
    file_text_close(file);
    readSaveArrays()
