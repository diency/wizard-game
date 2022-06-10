/// @description Insert description here
// You can write your code in this editor

if(blast_num < 2){
	alarm[0] = blast_rate;
	blast_num++;
}else{
	blast_num = 0;
	alarm[0] = fire_rate;
}

var angle = point_direction(x,y,oPlayer.x,oPlayer.y);

scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),angle,5);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),angle + 25,5);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),angle - 25,5);