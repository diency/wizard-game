/// @description Insert description here
// You can write your code in this editor

inc += inc_amount;
if(inc > 360){
	inc -= 360;	
}

if(dontspam){
	y = base_y + (sin(inc * (pi/180)) * y_amplitude);
}

if(action_time){
	if(current_selected = num_levels){
		//this is the back button
		action_time = false;
		
		in_menu = false;
		oPlayer.state = pState.normal;
		instance_destroy(oButton);
	}else{
		if(dontspam){
			dontspam = false;
			audio_stop_all();
			audio_play_sound(sEvilLaugh,0,0);
			oPlayer.visible = false;
			instance_destroy(oButton);
			alarm[0] = 60;
			oCamera.state = cState.frozen;
		}
		y -= 10;
	}
}else{
	if(keyboard_check_pressed(ord("W")) || 	keyboard_check_pressed(vk_up)){
		current_selected--;
		if(current_selected < 0){
			current_selected = num_levels;	
		}
	}
	if(keyboard_check_pressed(ord("S")) || 	keyboard_check_pressed(vk_down)){
		current_selected++;
		if(current_selected > num_levels){
			current_selected = 0;	
		}
	}
}