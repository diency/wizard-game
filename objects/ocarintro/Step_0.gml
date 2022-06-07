/// @description Insert description here
// You can write your code in this editor

if(starting){
var temp = cur_frames/max_frames;

var deltaX = end_x - start_x;
var deltaY = end_y - start_y;
	
x = start_x + (deltaX * scr_easing_cubic(temp));
y = start_y + (deltaY * scr_easing_cubic(temp));

cur_frames++;
}else{
	y-= 10;
}