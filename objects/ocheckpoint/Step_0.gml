/// @description Insert description here
// You can write your code in this editor

if(position_meeting(oPlayer.spawnx,oPlayer.spawny+32,id)){
	touching = true;	
}else{
	touching = false;	
}

if(touching && !active){
	active = true;
	if(!global.epic_mode){
		audio_play_sound(sndCheckpoint,0,0);
	}else{
		audio_play_sound(sndBadToTheBone,0,0);
	}
	image_index = 1;
}

if(!touching && active){
	active = false;
	image_index = 0;
}