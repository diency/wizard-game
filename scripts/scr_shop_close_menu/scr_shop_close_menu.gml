// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shop_close_menu(){
	in_menu = false;
	oPlayer.state = pState.normal;
	instance_destroy(oButton);
	instance_destroy(oBar);
	
	oPlayer.cur_bubble_ammo = global.bubble_ammo;
	oPlayer.cur_lightning_ammo = global.lightning_ammo;
	oPlayer.cur_fire_ammo = global.fire_ammo;
	
	oPlayer.cur_bubble_rof = global.bubble_rof;
	oPlayer.cur_lightning_dmg = global.lightning_dmg;
	oPlayer.cur_fire_aoe = global.fire_aoe;
}