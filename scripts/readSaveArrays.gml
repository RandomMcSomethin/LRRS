///readSaveArrays()
file = file_text_open_read("save.txt")
for (i = 0; i < array_length_1d(SHIPS); i += 1) {
    SHIPS[i] = file_text_read_real(file);
}
file_text_readln(file);
for (i = 0; i < array_length_1d(WEAPONS); i += 1) {
    WEAPONS[i] = file_text_read_real(file);
}
file_text_readln(file);
for (i = 0; i < array_length_1d(ITEMS); i += 1) {
    ITEMS[i] = file_text_read_real(file);
}
file_text_readln(file);
for (i = 0; i < array_length_1d(SPRAYS); i += 1) {
    SPRAYS[i] = file_text_read_real(file);
}
file_text_readln(file);
for (i = 0; i < array_length_1d(LEVELS); i += 1) {
    LEVELS[i] = file_text_read_real(file);
}
file_text_close(file);
