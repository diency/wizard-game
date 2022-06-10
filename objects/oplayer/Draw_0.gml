/// @description Insert description here
// You can write your code in this editor
draw_self();
if(state == pState.grappling){
	draw_line(x,y,grapple_target_x,grapple_target_y);	
}
if(instance_exists(oCreature)){
	if(!oCreature.collided){
		if(song_started && audio_is_playing(current_song)){
			if(song_percent > 0.85){
				draw_set_halign(fa_center);
				draw_text(x,y-30,"get to the exit!!");
			}
		}else if(song_started){
			draw_set_halign(fa_center);
			draw_text(x,y-30,"TIME UP! You are losing score!");	
		}
	}
}