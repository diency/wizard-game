/// @description Insert description here
// You can write your code in this editor

draw_self();

if(!bought && point_distance(x,y,oPlayer.x,oPlayer.y) < 70){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x,y - 70,"press E to attain");
	draw_text(x,y - 50,"true englightenment");
	draw_text(x,y - 30,"cost: 580,700");
	draw_text(x,y - 10,"your cash: " +string(global.available_cash));
	
}