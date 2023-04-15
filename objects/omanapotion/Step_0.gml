/// @description Insert description here
// You can write your code in this editor

var dist = point_distance(x,y,oPlayer.x,oPlayer.y)

if(dist < 150 && !collision_line(x,y,oPlayer.x,oPlayer.y,obj_wall_parent,false,false)){
	var spd = 6 - (dist/25);
	var angle = point_direction(x,y,oPlayer.x,oPlayer.y);
	
	x += lengthdir_x(spd,angle);
	y += lengthdir_y(spd,angle);
}