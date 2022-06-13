// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bullet_angled(objectType,initX,initY,angle,bulSpd){
	
	var billybob = instance_create_layer(initX,initY,"Instances",objectType);
	
	billybob.moveX = lengthdir_x(bulSpd,angle);
	billybob.moveY = lengthdir_y(bulSpd,angle);
	
	billybob.image_angle = angle;
}