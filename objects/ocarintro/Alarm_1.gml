/// @description Insert description here
// You can write your code in this editor
instance_destroy();

with(oPlayer){
	switch(room){
		case rmHub:
			current_song = audio_play_sound(sndHubSong,0,1);
			break;
		case rmTutorial:
			current_song = audio_play_sound(sndTutorialSong,0,1);
			break;
		case rmLevel1:
			current_song = audio_play_sound(sndLevel1,0,0);
			break;
		case rmLevel2:
			current_song = audio_play_sound(sndLevel2,0,0);
			break;
		case rmLevel3:
			current_song = audio_play_sound(sndLevel3,0,0);
			break;
		case rmLevel4:
			current_song = audio_play_sound(sndLevel4,0,0);
			break;
		case rmLevel5:
			current_song = audio_play_sound(sndLevel5,0,0);
			break;
	}
	song_length = audio_sound_length(current_song);
	song_started = true;
}