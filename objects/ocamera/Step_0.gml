/// @description Insert description here
// You can write your code in this editor
/// camera main
// godddddddddd im just so little! little man!
switch(state){
	case cState.normal:
		if(current_shake > 0){
			current_shake -= 0.1;	
		}

		if(keyboard_check(vk_lshift)){
		    camradius = 500;
		}else{
		    camradius = 100;
		}

		//other shit
		move_towards_point(mouse_x,mouse_y,0);
		xTo = oPlayer.x + lengthdir_x(min(camradius,distance_to_point(mouse_x,mouse_y)),direction);
		yTo = oPlayer.y + lengthdir_y(min(camradius,distance_to_point(mouse_x,mouse_y)),direction);

		x += (xTo - x)/followspeed;
		y += (yTo - y)/followspeed;

		cam_x = -(cam_width/2) + x + (current_shake * random_range(-screenshake_amount,screenshake_amount));
		cam_y = -(cam_height/2) + y + (current_shake * random_range(-screenshake_amount,screenshake_amount));

		cam_x = clamp(cam_x,0,room_width-cam_width);
		cam_y = clamp(cam_y,0,room_height-cam_height);

		camera_set_view_pos(view_camera[0],cam_x,cam_y);
		break;
		
	case cState.goHere:
		
		var temp = goHere_cur_frame/goHere_total_frames;
		
		var deltaX = end_x - start_x;
		var deltaY = end_y - start_y;
		
		x = start_x + (deltaX * scr_easing_cubic(temp));
		y = start_y + (deltaY * scr_easing_cubic(temp));
		
		cam_x = -(cam_width/2) + x;
		cam_y = -(cam_height/2) + y;

		cam_x = clamp(cam_x,0,room_width-cam_width);
		cam_y = clamp(cam_y,0,room_height-cam_height);

		camera_set_view_pos(view_camera[0],cam_x,cam_y);
		
		goHere_cur_frame--;
		
		if(goHere_cur_frame <= 0){
			state = cState.frozen;	
		}
		break;
		
	case cState.frozen:
		//literally do nothing, dont move lol
		break;
}

