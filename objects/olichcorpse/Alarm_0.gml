/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sndPlayerDie,0,0);
iterator++;	

if(iterator < 8){
	alarm[0] = long_alarm;
}else if(iterator < 23){
	alarm[0] = short_alarm;	
}else{
	repeat(40){
		instance_create_layer(x,y,"Instances",oCrystal);
	}
	global.lich_freed = false;
	global.lich_defeated = true;
	instance_create_layer(x,y,"Instances",oLichCorpse2);
	audio_play_sound(sGlassBreak,0,0);
	instance_destroy();
}