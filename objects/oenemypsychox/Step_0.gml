/// @description Insert description here
// You can write your code in this editor

if(hp <= 0){
	instance_destroy();	
}

image_angle += 5;

if(oPlayer.x < x){
	image_xscale = 1;	
}else{
	image_xscale = -1;	
}