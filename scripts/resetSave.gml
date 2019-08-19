///resetSave()
file = file_text_open_append("save.txt");
for (i = 0; i < array_length_1d(SHIPS); i++) {
    file_text_write_real(file, 0);
    SHIPS[i] = 0;
}
file_text_writeln(file);
for (i = 0; i < array_length_1d(WEAPONS); i++) {
    file_text_write_real(file, 0);
    WEAPONS[i] = 0;
}
file_text_writeln(file);
for (i = 0; i < array_length_1d(ITEMS); i++) {
    file_text_write_real(file, 0);
    ITEMS[i] = 0;
}
file_text_writeln(file);
for (i = 0; i < array_length_1d(SPRAYS); i++) {
    file_text_write_real(file, 0);
    SPRAYS[i] = 0;
}
file_text_writeln(file);
for (i = 0; i < array_length_1d(LEVELS); i++) {
    file_text_write_real(file, 0);
    LEVELS[i] = 0;
}
file_text_close(file);
