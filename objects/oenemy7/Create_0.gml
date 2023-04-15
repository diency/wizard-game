/// @description Insert description here
// You can write your code in this editor

if(global.epic_mode){
	sprite_index = asset_get_index(sprite_get_name(sprite_index) + "Epic");
}

worth = 300;
hp = 13;
fire_rate = 75;
alarm[0] = fire_rate + irandom_range(0,20) //makes enemies desync shots