/// @description Insert description here
// You can write your code in this editor

if(!collided){
	collided = true;
	audio_pause_all();
	audio_play_sound(sndWin,0,0);
	oPlayer.state = pState.frozen;
	oCamera.state = cState.frozen;
	
	//drop combo for final score
	with(oPlayer){
		combo_timer = 0;
		if(point_pool != 0){
			redeemed_points += point_pool * current_combo;
			current_combo = 0;
			point_pool = 0;
		}
	}
	/*
	if(oPlayer.redeemed_points > prev_hs){
		cash_gained = oPlayer.redeemed_points - prev_hs;
		
		switch(room){
			case rmLevel1:
				global.lv1_hs = oPlayer.redeemed_points;
				break;
			case rmLevel2:
				global.lv2_hs = oPlayer.redeemed_points;
				break;
			case rmLevel3:
				global.lv3_hs = oPlayer.redeemed_points;
				break;
			case rmLevel4:
				global.lv4_hs = oPlayer.redeemed_points;
				break;
			case rmLevel5:
				global.lv5_hs = oPlayer.redeemed_points;
				break;
		}
		
		global.available_cash += cash_gained;
		global.net_worth += cash_gained;
		
	}*/
	draw_progress = 3;
	alarm[0] = 60;
}