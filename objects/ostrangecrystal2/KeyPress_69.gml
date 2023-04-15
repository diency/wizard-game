/// @description Insert description here
// You can write your code in this editor

if(!bought && point_distance(x,y,oPlayer.x,oPlayer.y) < 70){
	if(global.available_cash >= 1725400){
		bought = true;
		
		var textman = instance_create_layer(0,0,"Instances",oLichLevelText);
		textman.text = "Something has changed...";
		
		audio_sound_pitch(audio_play_sound(sndWin,0,0),0.5);
		audio_sound_pitch(audio_play_sound(sndWin,0,0),0.75);
		audio_sound_pitch(audio_play_sound(sndWin,0,0),1.25);
		audio_sound_pitch(audio_play_sound(sndWin,0,0),1.5);
		
		global.epic_mode = true;
	}
}