/// @description Insert description here
// You can write your code in this editor

if(init_spd > 0){
	init_spd -= spd_decay;
	x += lengthdir_x(init_spd,init_dir);
	y += lengthdir_y(init_spd,init_dir);
}else{
	image_angle = 0;
	var angle = point_direction(x,y,oPlayer.x,oPlayer.y);
	x += lengthdir_x(succ_spd,angle);
	y += lengthdir_y(succ_spd,angle);
	
	if(point_distance(x,y,oPlayer.x,oPlayer.y) < succ_spd){
		instance_destroy();
		audio_play_sound(sSparkle,0,0);
	}
}