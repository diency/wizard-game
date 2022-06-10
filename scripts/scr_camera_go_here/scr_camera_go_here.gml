// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_camera_go_here(goToX,goToY,numFrames){
	with(oCamera){
		
		start_x = goToX;
		start_y = goToY;
		
		end_x = x;
		end_y = y; //im fucking stupid lol
		
		goHere_cur_frame = numFrames;
		goHere_total_frames = numFrames;
		
		state = cState.goHere;
	}
	return;
}