/// @description Insert description here
// You can write your code in this editor

if(ds_list_find_index(collided_array,other.id) == -1){
	ds_list_add(collided_array,other.id)
	other.hp -= (6 + (oPlayer.cur_fire_aoe - 4));
	other.alarm[1] = 5;
	audio_play_sound(sndTakeDmg,0,0);
}