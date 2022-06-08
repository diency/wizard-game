/// @description Insert description here
// You can write your code in this editor

var scale = global.fire_aoe;

image_xscale = scale;
image_yscale = scale;

audio_play_sound(sndExplosion,0,0);

alarm[0] = 30;

collided_array = ds_list_create();