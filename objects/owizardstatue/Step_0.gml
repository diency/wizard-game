/// @description Insert description here
// You can write your code in this editor

archwizard_check = true;
for(var i = 0; i < ds_list_size(oShop.tiers); i++){
	if(oShop.tiers[| i] < 4){
		archwizard_check = false;
	}
}

if(keyboard_check_pressed(ord("E")) && point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && archwizard_check){
	global.lich_freed = true;
	audio_play_sound(sFreedLich,0,0);
}

if(global.lich_freed){
	instance_create_layer(x,y-5,"Instances",oLichMenu);
	instance_destroy();	
}