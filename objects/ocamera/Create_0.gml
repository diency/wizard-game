/// @description Insert description here
// You can write your code in this editor

cam_width = global.game_width;
cam_height = global.game_height;
view_camera[0] = camera_create_view(x,y,cam_width,cam_height);

camradius = 100;
followspeed = 25;

depth = 101;

screenshake_amount = 7;
current_shake = 0;

enum cState {
	normal,
	goHere,
	frozen
}

state = cState.frozen;

start_x = x;
start_y = y;
end_x = 0;
end_y = 0;
goHere_total_frames = 60;
goHere_cur_frame = 60;