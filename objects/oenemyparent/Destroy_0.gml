/// @description Insert description here
// You can write your code in this editor

oPlayer.combo_timer = oPlayer.combo_timer_max;
oPlayer.point_pool += worth;
oPlayer.current_combo++;

var bruh = instance_create_layer(x,y,"Instances",oBlank);
bruh.sprite_index = sDefeated;
audio_play_sound(sGlassBreak,0,0);

repeat(8){
	instance_create_layer(x,y,"Instances",oCrystal);
}