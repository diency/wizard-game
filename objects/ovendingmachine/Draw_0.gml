/// @description Insert description here
// You can write your code in this editor

draw_self();

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !part_bought){
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(global.available_cash < oShop.upgrade_cost * 36){
	
		draw_text(x,y - 50,"Robot part - cost: "+string(oShop.upgrade_cost * 36));
		draw_text(x,y - 30,"Spendable cash: "+string(global.available_cash));
		draw_text(x,y - 10,"Net worth: "+string(global.net_worth));
	
	}else{
		draw_text(x,y - 50,"PRESS E TO BUY ROBOT PART");
		draw_text(x,y - 20,"(ends game)");
	}
	
}