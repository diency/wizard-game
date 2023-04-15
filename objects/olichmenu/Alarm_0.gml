/// @description Insert description here
// You can write your code in this editor

switch(current_selected){
	case 0: //go to level 1
		room_goto(rmExLevel1);
		break;
	case 1: //go to level 2
		room_goto(rmExLevel2);
		break;
	case 2: //etc
		room_goto(rmExLevel3);
		break;
	default:
		room_restart();
}