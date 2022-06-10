/// @description Insert description here
// You can write your code in this editor

collided = false;

draw_progress = 0;
cash_gained = 0;

switch(room){
	case rmLevel1:
		prev_hs = global.lv1_hs;
		break;
	case rmLevel2:
		prev_hs = global.lv2_hs;
		break;
	case rmLevel3:
		prev_hs = global.lv3_hs;
		break;
	case rmLevel4:
		prev_hs = global.lv4_hs;
		break;
	case rmLevel5:
		prev_hs = global.lv5_hs;
		break;
}