// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_camera_go_here(goToX,goToY,numFrames){
	with(oCamera){
		
		start_x = x;
		start_y = y;
		
		end_x = goToX;
		end_y = goToY;
		
		goHere_cur_frame = numFrames;
		goHere_total_frames = numFrames;
		
		state = cState.goHere;
	}
	return;
}