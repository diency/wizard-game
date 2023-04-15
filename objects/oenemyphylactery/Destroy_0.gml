/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

oPlayer.combo_timer = oPlayer.combo_timer_max;
oPlayer.point_pool += worth;
oPlayer.current_combo++;

audio_sound_pitch(audio_play_sound(sGlassBreak,0,0),0.8);

instance_create_layer(oLichBoss.x,oLichBoss.y,"Instances",oLichCorpse);
instance_destroy(oLichBoss);

repeat(worth/20){
	instance_create_layer(x,y,"Instances",oCrystal);
}