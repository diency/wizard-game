/// @description Insert description here
// You can write your code in this editor

if(room == rmExLevel3){
	cur_bubble_ammo = 30;
	cur_lightning_ammo = 1;
	cur_fire_ammo = 1;
}else{
	cur_bubble_ammo = global.bubble_ammo;
	cur_lightning_ammo = global.lightning_ammo;
	cur_fire_ammo = global.fire_ammo;
}

instance_destroy(other);

audio_play_sound(sndPotionDrink,0,0);

repeat(5){
	var boyo = instance_create_layer(x,y,"Instances",oCrystal);
	boyo.sprite_index = sManaDrop;
}

combo_timer = combo_timer_max;