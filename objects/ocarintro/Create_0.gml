/// @description Insert description here
// You can write your code in this editor
max_frames = 40;
cur_frames = 0;

alarm[0] = max_frames;

start_x = x - (global.game_width*1.5);
start_y = y - (global.game_height*1);

if(room == rmExLevel1 || room == rmExLevel2 || room == rmExLevel3){
	sprite_index = sLich;
}

end_x = x;
end_y = y;

starting = true;

if(!global.epic_mode){
	screech_snd = audio_play_sound(sndCarScreech,0,0);
}else{
	screech_snd = audio_play_sound(sGoofyCarHorn,0,0);
	audio_sound_pitch(screech_snd,1.2);
}

depth = -301;