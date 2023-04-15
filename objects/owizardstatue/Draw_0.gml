/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70){
	if(!archwizard_check){
		draw_text(x,y - 30,"only a powerful archwizard can free");
		draw_text(x,y - 10,"the great lich Alzador from stone");
	}else{
		draw_text(x,y - 30,"you feel a deep sense of dread");
		draw_text(x,y - 10,"press e to free the lich");
	}
}