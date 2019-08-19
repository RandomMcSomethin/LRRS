///playSFX(sound, [loops])
var sound = argument[0]
if (argument_count > 1) {
    var loops = argument[1];
} else var loops = 0;
if audio_is_playing(sound) audio_stop_sound(sound);
var sfx = audio_play_sound_on(SFX, sound, loops, 10);
return sfx;
//audio_sound_gain(sfx, SAVE_MAP[? "SFX Volume"], 0);
