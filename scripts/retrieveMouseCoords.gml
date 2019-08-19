///retrieveMouseCoords() (call every frame)
// Retrieve mouse coords
if (mouse_check_button_pressed(mb_left)) {
    clipboard_set_text("X: " + string(mouse_x - room_width/2) + ", Y: " + string(mouse_y));
    debug("Clipboard set!");
    game_end();
}
