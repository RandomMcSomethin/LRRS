///resetShop()
file = file_text_open_write("save.txt");
for (i = 0; i < array_length_1d(SHOP); i++) {
    file_text_write_real(file, 0);
    SHOP[i] = 0;
    file_text_writeln(file);
}
file_text_close(file);
