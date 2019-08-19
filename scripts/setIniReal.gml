///setIniReal(file, section, key, value)
var file = argument[0];
var section = argument[1];
var key = argument[2];
var value = argument[3];
var f = ini_open(file);
var i = ini_write_real(section, key, value);
ini_close();
return i;
