/// @description Insert description here
// You can write your code in this editor

x += move_x;
y += move_y;

if(point_distance(x,y,oPlayer.x,oPlayer.y) > global.game_height * 2){
	instance_destroy();	
}