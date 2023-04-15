/// @description Insert description here
// You can write your code in this editor

scale = oPlayer.cur_fire_aoe;

image_xscale = scale;
image_yscale = scale;

if(!global.epic_mode){
	audio_play_sound(sndExplosion,0,0);
}else{
	audio_play_sound(sAyoPizzaHere,0,0);	
}

alarm[0] = 30;

collided_array = ds_list_create();