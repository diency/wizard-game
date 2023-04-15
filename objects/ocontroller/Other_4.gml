/// @description Insert description here
// You can write your code in this editor

if(global.epic_mode){
	var layer_id = layer_get_id("Background");
	var background_id = layer_background_get_id(layer_id);
	
	oWall1.sprite_index = sprMinecraftBricks;
	oCheckpoint.sprite_index = sprSpunchBob;
	if(instance_exists(oWall2)){
		oWall2.sprite_index = sprPunishment;
	}
	if(instance_exists(oWall3)){
		oWall3.sprite_index = sprMissingTexture;
	}
	
	with(oPlayer){
		instance_destroy(instance_place(x,y,oWall1));
	}
	with(oCreature){
		instance_destroy(instance_place(x,y,oWall1));
	}
	
	//layer_background_sprite(background_id,bgLava);
	
	if(room == rmLevel1){
		layer_background_sprite(background_id,bgObama);
	}
	if(room == rmLevel2){
		layer_background_sprite(background_id,bgWhatUpSon);
	}
	if(room == rmLevel3){
		layer_background_sprite(background_id,bgFraxSus);
	}
	if(room == rmLevel4){
		layer_background_sprite(background_id,bgFrankenstein);
	}
	
	//lvl 5 has no bg
	
	if(room == rmExLevel1){
		layer_background_sprite(background_id,bgBoring);
	}
	if(room == rmExLevel2){
		layer_set_visible(layer_id, true);
		var layer_effect2 = layer_get_id("Effect_2");
		layer_set_visible(layer_effect2, false);
		var layer_effect4 = layer_get_id("Effect_4");
		layer_set_visible(layer_effect4, true);
		layer_background_sprite(background_id,bgWtf);
	}
	if(room == rmExLevel3){
		layer_background_sprite(background_id,bgPeetah);
	}
}