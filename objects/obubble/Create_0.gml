/// @description Insert description here
// You can write your code in this editor
var spd = 15;

var go_to_x = mouse_x;
var go_to_y = mouse_y;
	
var deltaX = go_to_x - x;
var deltaY = go_to_y - y;

var hyp = sqrt((deltaX * deltaX) + (deltaY * deltaY));
	
if(oPlayer.state == pState.normal){
	oPlayer.vSpeed += -(deltaY/hyp) * 2;
	oPlayer.hSpeed += -(deltaX/hyp) * 2;
}
	
move_x = deltaX/hyp * spd;
move_y = deltaY/hyp * spd;