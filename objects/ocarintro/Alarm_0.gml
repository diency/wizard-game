/// @description Insert description here
// You can write your code in this editor

alarm[1] = max_frames;

oPlayer.visible = true;
oPlayer.state = pState.normal;
oCamera.state = cState.normal;

starting = false;

audio_stop_sound(screech_snd);
audio_play_sound(sndSlam,0,0);