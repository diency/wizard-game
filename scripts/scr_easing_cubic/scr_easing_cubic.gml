// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_easing_cubic(num){
	return 1 - power(1 - num, 3);
}