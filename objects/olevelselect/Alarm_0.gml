/// @description Insert description here
// You can write your code in this editor

switch(current_selected){
	case 0: //go to level 1
		room_goto(rmLevel1);
		break;
	case 1: //go to level 2
		room_goto(rmLevel2);
		break;
	case 2: //etc
		room_goto(rmLevel3);
		break;
	case 3:
		room_goto(rmLevel4);
		break;
	case 4:
		room_goto(rmLevel5);
		break;
	default:
		room_restart();
}