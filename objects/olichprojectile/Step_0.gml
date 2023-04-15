/// @description Insert description here
// You can write your code in this editor

if(move){
	cur_frame++;
	
	deltax = targetx - init_x;
	deltay = targety - init_y;
	
	percent = cur_frame/frames_until_destination;
	
	x = init_x + (deltax * scr_easing_cubic(percent));
	y = init_y + (deltay * scr_easing_cubic(percent));
	
	//sanity check, this should never trigger
	if(cur_frame > frames_until_destination + 1){
		instance_destroy();	
	}
}