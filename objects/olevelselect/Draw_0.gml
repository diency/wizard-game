/// @description Insert description here
// You can write your code in this editor

draw_self();

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !action_time && !in_menu){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x + 32,y - 10,"press E for level select");
}