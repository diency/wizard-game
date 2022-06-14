// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_die(){
	
		if(state != pState.frozen){
		x = spawnx;
		y = spawny;
		
		oPlayer.state = pState.noControls;
	
		vSpeed = 0;
		hSpeed = 0;
	
		audio_play_sound(sndPlayerDie,0,0);
	
		//drop combo
		combo_timer = 0;
		
		//disable inputs for a couple frames
		alarm[0] = 20;
	}
}