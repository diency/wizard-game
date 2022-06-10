/// @description Insert description here
// You can write your code in this editor

if(in_menu){
	in_menu = false;
	oPlayer.state = pState.normal;
	instance_destroy(oButton);
	instance_destroy(oBar);
}