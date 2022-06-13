/// @description Insert description here
// You can write your code in this editor

if(oVendingMachine.part_bought){
	
	sprite_index = sBeepMoving;
	
	angle = point_direction(x,y,oLevelSelect.x,oLevelSelect.y + 32);
	
	x += lengthdir_x(8,angle);
	y += lengthdir_y(8,angle);
	
	if(point_distance(x,y,oLevelSelect.x,oLevelSelect.y + 32) < 16){
		instance_destroy();
	}
}