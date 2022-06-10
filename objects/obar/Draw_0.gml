/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(my_dad.current_selected == my_id){
	draw_set_color(c_aqua);
	sprite_index = sBars;
}else{
	draw_set_color(c_white);
	sprite_index = sBars2;
}
draw_text(x,y,text);