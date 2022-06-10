/// @description Insert description here
// You can write your code in this editor

x = oBlank.x + global.game_width;
y = oBlank.y - global.game_height;

start_x = x;
start_y = y;

end_x = oBlank.x + 30;
end_y = oBlank.y;

max_frames = 90;
cur_frames = 0;

phase = 0;
alarm[0] = 60;

depth = -1;