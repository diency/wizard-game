/// @description Insert description here
// You can write your code in this editor

var spd = point_distance(0,0,moveX,moveY);
var angle = point_direction(x,y,oPlayer.x,oPlayer.y);

moveX = lengthdir_x(spd,angle);
moveY = lengthdir_y(spd,angle);

x += moveX;
y += moveY;

image_angle = 0;