/// @description Insert description here
// You can write your code in this editor

if(global.epic_mode){
	sprite_index = asset_get_index(sprite_get_name(sprite_index) + "Epic");
}

depth = -1;

facing = -1;

x_diff = 80;
y_diff = 80;

targetx = oPlayer.x + (facing * x_diff);
targety = oPlayer.y - y_diff;