/// @description Insert description here
// You can write your code in this editor

if(phase == 2){ //taking out gems
	image_index++
	audio_play_sound(sndRustling,0,0);
	alarm[0] = 60;
}

if(phase == 3){
	image_index++;
	audio_play_sound(sndTakeDmg,0,0);
	alarm[0] = 10
}

if(phase == 4){
	image_index = 0; //back to default anim
	alarm[0] = 40;
}

if(phase == 5){
	instance_create_layer(oBlank.x,oBlank.y,"Instances",oEnemy1);
	instance_destroy(oBlank);
	alarm[0] = 60;
}

if(phase == 6){
	//he leave now
	alarm[0] = 120;
}

if(phase == 7){
	oPlayer.state = pState.normal;
	oCamera.state = cState.normal;
	instance_destroy();
}

phase++;