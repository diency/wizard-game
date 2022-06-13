/// @description Insert description here
// You can write your code in this editor

if(!bought && point_distance(x,y,oPlayer.x,oPlayer.y) < 70){
	if(global.available_cash >= 508700){
		bought = true;
		
		audio_sound_pitch(audio_play_sound(sndWin,0,0),0.75);
		
		global.grungo = true;
		oPlayer.sprite_index = sGrungo;
		
		global.bubble_ammo = 9999;
		global.lightning_ammo = 9999;
		global.fire_ammo = 9999;
		
		global.bubble_rof = 0;
		global.lightning_dmg = 50;
		global.fire_aoe = 100;
		
		with(oPlayer){
			cur_bubble_ammo = global.bubble_ammo;
			cur_bubble_rof = global.bubble_rof;

			cur_lightning_ammo = global.lightning_ammo;
			cur_lightning_dmg = global.lightning_dmg;

			cur_fire_ammo = global.fire_ammo;
			cur_fire_aoe = global.fire_aoe;
		}
	}
}