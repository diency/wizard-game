/// @description Insert description here
// You can write your code in this editor

oPlayer.combo_timer = oPlayer.combo_timer_max;
oPlayer.point_pool += worth;
oPlayer.current_combo++;

var bruh = instance_create_layer(x,y,"Instances",oBlank);
bruh.sprite_index = sDefeated;
if(object_index == oEnemyJim){
	bruh.sprite_index = sDefeatedJim;	
}
if(object_index == oEnemyCat){
	bruh.sprite_index = sDefeatedCat;
}
if(object_index == oEnemyPsychoX){
	bruh.sprite_index = sDefeatedPX;
}
with(bruh){
	if(collision_line(x,y,x,y+500,obj_wall_parent,false,false)){
		while(!place_meeting(x,y+1,obj_wall_parent)){
			y+= 1;	
		}
	}else{
		instance_destroy();	
	}
}

if(object_index == oEnemyMrW){
	var bruh = instance_create_layer(x + 10,y +32,"Instances",oBlank);
	bruh.sprite_index = sDefeated;
	var bruh = instance_create_layer(x - 10,y+32,"Instances",oBlank);
bruh.sprite_index = sDefeated;
}

audio_play_sound(sGlassBreak,0,0);

repeat(worth/20){
	instance_create_layer(x,y,"Instances",oCrystal);
}