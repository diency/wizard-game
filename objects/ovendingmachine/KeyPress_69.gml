/// @description Insert description here
// You can write your code in this editor

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70){
	if(global.available_cash >= oShop.upgrade_cost * 36 && !part_bought){
		part_bought = true;
		audio_play_sound(sndChaching,0,0);
		sprite_index = sVendingMachineBought;
	}
}