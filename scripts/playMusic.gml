///playMusic(music, [loops])
var music = argument[0];
//if (audio_is_playing(music)) exit;
if (argument_count > 1) {
    var loops = argument[1];
} else var loops = 1;
var mus = audio_play_sound_on(MUS, music, loops, 11);
return mus;
//audio_sound_gain(mus, SAVE_MAP[? "Music Volume"], 0);
