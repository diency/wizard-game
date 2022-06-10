/// @description Insert description here
// You can write your code in this editor

if(collided){
	
	var base_x = global.game_width/2;
	var base_y = global.game_height/8;
	
	draw_set_halign(fa_center);
	draw_text_transformed(base_x,base_y,"CLEAR!",4,4,0);

	if(draw_progress >= 1){
		draw_text(base_x,base_y + 100,"your score: "+string(oPlayer.redeemed_points));
	}
	
	if(draw_progress >= 2){
		draw_text(base_x,base_y + 130,"previous high score: "+string(prev_hs));
	}
	
	if(draw_progress >= 3){
		draw_text(base_x,base_y + 160,"funds acquired: "+string(cash_gained));
	}

}