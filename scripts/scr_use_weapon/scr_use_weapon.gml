// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_use_weapon(){
	switch(current_weapon){
		case 0: // melee
			if(mouse_check_button(mb_left) && melee_cooldown <= 0){
				melee_cooldown = 60;
				instance_create_layer(x,y,"Instances",oSlash);
				audio_sound_pitch(audio_play_sound(sndSwish,0,0),random_range(0.9,1.2));
				oCamera.current_shake = 1;
			}
			break;
		case 1: // bubble
			if(mouse_check_button(mb_left) && cur_bubble_ammo > 0 && bubble_cooldown <= 0){
				bubble_cooldown = cur_bubble_rof;
				cur_bubble_ammo--;
				instance_create_layer(x,y,"Instances",oBubble);
				audio_play_sound(sLaser,0,0);
				oCamera.current_shake = 1;
			}
			break;
		case 2: // lightning
			if(mouse_check_button(mb_left) && cur_lightning_ammo > 0 && lightning_cooldown <= 0){
				lightning_cooldown = 40;
				cur_lightning_ammo--;
				instance_create_layer(x,y,"Instances",oBolt);
				audio_play_sound(sndLightning,0,0);
				oCamera.current_shake = 1.5;
			}
			break;
		case 3: // fireball
			if(mouse_check_button(mb_left) && cur_fire_ammo > 0 && fire_cooldown <= 0){
				fire_cooldown = 60;
				cur_fire_ammo--;
				instance_create_layer(x,y,"Instances",oBomb);
				audio_play_sound(sFireCast,0,0);
				oCamera.current_shake = 2;
			}
			break;
	}
}