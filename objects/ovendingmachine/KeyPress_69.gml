/// @description Insert description here
// You can write your code in this editor

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70){
	if(global.available_cash > oShop.upgrade_cost * 36){
		audio_play_sound(sndWin,0,0);
	}
}