/// @description Insert description here
// You can write your code in this editor

alpha = 0.5;

var frames_visible = 40;

alpha_decrement = alpha/frames_visible;

with(oPlayer){
	cur_bubble_ammo = 30;
	cur_bubble_rof = 15;
	cur_lightning_ammo = 1;
	cur_lightning_dmg = 8;
	cur_fire_ammo = 1;
	cur_fire_aoe = 4;
}

/*
global.bubble_ammo = 30;
global.bubble_rof = 15;
global.lightning_ammo = 1;
global.lightning_dmg = 8;
global.fire_ammo = 1;
global.fire_aoe = 4;