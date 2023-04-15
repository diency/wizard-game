/// @description Insert description here
// You can write your code in this editor

if(phase < 2){
	vsp += grav;
	y += vsp;
}

if(place_meeting(x,y+vsp,obj_wall_parent)){
	while(!place_meeting(x,y+sign(vsp),obj_wall_parent)){
		y+= sign(vsp);	
	}
	vsp = 0;
	if(phase == 0){
		vsp = -4;	
	}
	if(phase == 1){
		vsp = -2;	
	}
	phase++;
}