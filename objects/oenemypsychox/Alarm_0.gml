/// @description Insert description here
// You can write your code in this editor

scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),image_angle,4);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),image_angle+90,4);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),image_angle+180,4);
scr_bullet_angled(oEnemyBullet,x,y + (sprite_height/2),image_angle-90,4);
alarm[0] = fire_rate;