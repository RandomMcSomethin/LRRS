///getIniReal(file, section, key, default)
var file = argument[0];
var section = argument[1];
var key = argument[2];
var def = argument[3];
ini_open(file);
i = ini_read_real(section, key, def);
ini_close();
return i;
