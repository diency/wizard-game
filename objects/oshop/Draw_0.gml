/// @description Insert description here
// You can write your code in this editor
draw_self();

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !in_menu){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if(!oVendingMachine.part_bought && !global.grungo){
		draw_text(x + 32,y - 10,"press E for shop");
	}else{
		draw_text(x + 32,y - 10,"sorry kiddo, got nothing left to sell ya");
	}
}

if(in_menu){
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(x + 30,y+10,"your cash: " + string(global.available_cash));
	if(current_selected != num_upgrades){
		if(tiers[| current_selected] < max_upgrade){
			draw_text(x + 30,y+30,"cost: " + string(upgrade_cost * (tiers[| current_selected] + 1)));
		}else{
			draw_text(x + 30,y+30,"cost: MAXED OUT!");
		}
	}
	//draw_text(x + 30,y+50,"upgrades are applied on start of new level");
}