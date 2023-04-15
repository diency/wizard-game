/// @description Insert description here
// You can write your code in this editor

x += move_x;
y += move_y;

if(point_distance(x,y,oPlayer.x,oPlayer.y) > global.game_width * 1.5){
	instance_destroy();	
}

if(i_frames > 0){
	i_frames--;	
}