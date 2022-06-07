// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bullet_targeted(initX,initY,targetX,targetY,bulSpd){
	var billybob = instance_create_layer(initX,initY,"Instances",oEnemyBullet);
	
	var angle = point_direction(initX,initY,targetX,targetY);
	
	billybob.moveX = lengthdir_x(bulSpd,angle);
	billybob.moveY = lengthdir_y(bulSpd,angle);
}