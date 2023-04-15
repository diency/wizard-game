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

draw_sprite_ext(sprite_index,-1,x+randx,y+randy,image_xscale,image_yscale,image_angle,-1,1);
gpu_set_fog(false,c_white,0,0);

//depth = -1;
for(var i = 0; i < hp; i++){
	draw_sprite(sprHealth,-1,x - ((hp * 6)/2) + (i*6),y-10)
}
//depth = 0;