/// @description Insert description here
// You can write your code in this editor

if(draw_progress >= 4){
	oPlayer.x = x;
	oPlayer.y = y;
	
	x += 8;
	y -= 4;
}

if(draw_progress >= 5){
	audio_stop_all();
	room_goto(rmHub);
}