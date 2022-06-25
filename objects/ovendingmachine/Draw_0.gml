/// @description Insert description here
// You can write your code in this editor

draw_self();

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !part_bought){
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(global.available_cash < part_cost){
	
		draw_text(x,y - 70,"Robot part - cost: " +string(part_cost));
		draw_text(x,y - 50,"Spendable cash: "+string(global.available_cash));
		draw_text(x,y - 30,"Total cash owned: "+string(global.net_worth));
		draw_text(x,y - 10,"You can sell upgrades to afford the robot part!");
	}else{
		draw_text(x,y - 50,"PRESS E TO BUY ROBOT PART");
		draw_text(x,y - 20,"(ends game)");
	}
	
}