/// @description Insert description here
// You can write your code in this editor

if(mouse_x > oPlayer.x){
	facing = -1;	
}else{
	facing = 1;	
}

targetx = oPlayer.x + (facing * x_diff);
targety = oPlayer.y - y_diff

var delta_x = targetx - x;
var delta_y = targety - y;

var spd = 0.15; //in percentage

if(abs(delta_x) > 1){
	x += delta_x * spd;	
}

if(abs(delta_y) > 1){
	y += delta_y * spd;	
}

if(place_meeting(oPlayer.x,oPlayer.y,oLichTrigger)){
	var murder = instance_nearest(oPlayer.x,oPlayer.y,oLichTrigger);
	instance_destroy(murder);
	
	with(oStoneEnemyParent){
		if(point_distance(x,y,oLichLevel.x,oLichLevel.y) < global.game_width * 1.5){
			var man = instance_create_layer(oLichLevel.x,oLichLevel.y,"Instances",oLichProjectile);
			man.targetx = x;
			man.targety = y + sprite_height/2;
			man.move = true;
		}
	}
	
	audio_play_sound(sEvilLaugh,0,0);
}

if(place_meeting(oPlayer.x,oPlayer.y,oLichBossTrigger)){
	instance_create_layer(x,y,"Instances",oLichBoss);
	var textman = instance_create_layer(0,0,"Instances",oLichLevelText);
	textman.text = "Destroy Alzador's phylactery";
	instance_destroy();
}