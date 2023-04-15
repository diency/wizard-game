/// @description Insert description here
// You can write your code in this editor

if(global.epic_mode){
	sprite_index = asset_get_index(sprite_get_name(sprite_index) + "Epic");
}

depth = -1;

cur_travel_frames = 0;
cur_wait_frames = 0;

wait_time = 90;
travel_time = 40;