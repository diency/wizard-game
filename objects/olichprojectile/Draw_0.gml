/// @description Insert description here
// You can write your code in this editor

//x = init_x + (deltax * scr_easing_cubic(percent));
//y = init_y + (deltay * scr_easing_cubic(percent));

if(move && cur_frame != 0){
	for(var i = 0; i < 3; i++){
		var img_dist_dec = 0.05;
		
		var cur_x = init_x + (deltax * max(0,scr_easing_cubic(percent - (i*img_dist_dec))));
		var cur_y = init_y + (deltay * max(0,scr_easing_cubic(percent - (i*img_dist_dec))));
		
		var img_scale_dec = 0.25;
		draw_sprite_ext(sprite_index,0,cur_x,cur_y,1-(i*img_scale_dec),1-(i*img_scale_dec),0,-1,1);
	}
}