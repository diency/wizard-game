/// @description Insert description here
// You can write your code in this editor

if(alarm[1] > 0){
	var randx = irandom_range(-3,3);
	var randy = irandom_range(-3,3);
	gpu_set_fog(true,c_white,0,0); //hitflash
}else{
	var randx = 0;
	var randy = 0;
}

draw_sprite(sprite_index,-1,x+randx,y+randy);
gpu_set_fog(false,c_white,0,0);