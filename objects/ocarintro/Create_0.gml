/// @description Insert description here
// You can write your code in this editor
max_frames = 40;
cur_frames = 0;

alarm[0] = max_frames;

start_x = x - (global.game_width*1.5);
start_y = y - (global.game_height*1);

end_x = x;
end_y = y;

starting = true;

screech_snd = audio_play_sound(sndCarScreech,0,0);

depth = -301;