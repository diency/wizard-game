/// @description Insert description here
// You can write your code in this editor

if(oPlayer.x < x){
	var angle = 180;	
}else{
	var angle = 0;	
}
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2) + 30,angle,4);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2) + 15,angle,4);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),angle,4);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2) - 15,angle,4);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2) - 30,angle,4);
alarm[0] = fire_rate;