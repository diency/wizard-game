/// @description Insert description here
// You can write your code in this editor

var angle = point_direction(x,y,oPlayer.x,oPlayer.y);

scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),angle + irandom_range(-10,10),2);

alarm[0] = fire_rate;