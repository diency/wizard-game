/// @description Insert description here
// You can write your code in this editor

if(cur_travel_frames < travel_time){
	if(cur_travel_frames == 0){
		var closest = instance_nearest(x,y,oLichNode);
		instance_deactivate_object(closest);
		var cur_target_node = instance_find(oLichNode, irandom(instance_number(oLichNode) - 1));
		instance_activate_object(closest);
		
		init_x = x;
		init_y = y;
		
		target_x = cur_target_node.x;
		target_y = cur_target_node.y;
	}
	
	var deltax = target_x - init_x;
	var deltay = target_y - init_y;
	
	var percent = cur_travel_frames/travel_time;
	
	x = init_x + (deltax * scr_easing_cubic(percent));
	y = init_y + (deltay * scr_easing_cubic(percent));
	
	cur_travel_frames++;
}else if(cur_wait_frames < wait_time){
	if(cur_wait_frames == 0){
		//shoot lightning
		scr_bullet_targeted(oEnemyBolt,x,y + (sprite_height/2),oPlayer.x,oPlayer.y,5);
	}
	cur_wait_frames++;
}else{
	//reset
	cur_travel_frames = 0;
	cur_wait_frames = 0;
}