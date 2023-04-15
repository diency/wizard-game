/// @description Insert description here
// You can write your code in this editor

if(global.cheating){
	audio_sound_pitch(audio_play_sound(sndWin,0,0),1.5);
	with(oEnemyParent){
		hp = 0;	
	}
}