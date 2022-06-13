/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape)){
	
	if(!paused){
		if(oPlayer.state == pState.normal || oPlayer.state == pState.grappling){
			
			var cam_x = oCamera.x
			var cam_y = oCamera.y
			
			var wid = global.game_width/2
			var hig = global.game_height/2
			
			cam_x = clamp(cam_x,wid,room_width - wid);
			cam_y = clamp(cam_y,hig,room_height-hig);
			
			instance_deactivate_all(true);
			
			for(var i = 0; i < 4; i++){
				var bobby = instance_create_layer(cam_x,cam_y - 70 + (i * 50),"Instances",oButton);
				bobby.my_dad = id;
				bobby.my_id = i;
				
				switch(i){
					case 0:
						bobby.text = "unpause";
						break;
					case 1:
						bobby.text = "restart";
						break;
					case 2:
						bobby.text = "go to hub";
						break;
					case 3:
						bobby.text = "quit game";
						break;
				}
			}
			
			layer_set_visible("Assets_1",false);
			layer_set_visible("Assets_1_1",false);
			paused = true;
			audio_pause_all();
		}
	}else{
		layer_set_visible("Assets_1",true);
		layer_set_visible("Assets_1_1",true);
		instance_destroy(oButton);
		paused = false;
		instance_activate_all();
		audio_resume_all();
	}

}

if(paused && action_time){
	action_time = false;
	paused = false;
	switch(current_selected){
		case 0: //unpause
			layer_set_visible("Assets_1",true);
			instance_destroy(oButton);
			instance_activate_all();
			audio_resume_all();
			break;
			
		case 1: //restart level
			audio_stop_all();
			room_restart();
			break;
			
		case 2: //go to hub
			audio_stop_all();
			room_goto(rmHub);
			break;
			
		case 3: //quit game
			game_end();
			break;
	}
}