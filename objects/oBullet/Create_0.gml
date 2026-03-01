speed = 4 * oGhost.dir;

ch_alpha = choose(.05,.1,.1,5);

var _sound = choose(snd_Shoot1, snd_Shoot2, snd_Shoot3, snd_Shoot4);
var _instancia_som = audio_play_sound(_sound, 1, false);

// Muda o tom entre 0.9 (mais grave) e 1.1 (mais agudo)
audio_sound_pitch(_instancia_som, random_range(0.9, 1.1));