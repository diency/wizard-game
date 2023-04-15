/// @description Insert description here
// You can write your code in this editor

var cat = instance_nearest(x,y,oEnemyCat);

if(point_distance(cat.x,cat.y,other.x,other.y) < oPlayer.cur_fire_aoe * (sprite_get_width(sExplosion)/2) * 0.95){
	instance_destroy(other);
}