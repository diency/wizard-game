/// @description Insert description here
// You can write your code in this editor

my_dad.action_time = true;
//dont shoot guns on accident when exiting
if(!oController.paused){
	oPlayer.melee_cooldown = 15;
	oPlayer.bubble_cooldown = 15;
	oPlayer.lightning_cooldown = 15;
	oPlayer.fire_cooldown = 15;
}