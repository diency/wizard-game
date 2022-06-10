/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i< 360; i += 45;){
	scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),i,4);
}
alarm[0] = fire_rate;