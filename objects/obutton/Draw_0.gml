/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x+1,y+1,text);
if(my_dad.current_selected == my_id){
	draw_set_color(c_aqua);	
}else{
	draw_set_color(c_white);	
}
draw_text(x,y,text);