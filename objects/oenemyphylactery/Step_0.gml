/// @description Insert description here
// You can write your code in this editor

if(summon_progress < 1 && hp < 40){
	summon_progress++;
	with(oEnemy1Stone){
		var broski = instance_create_layer(oLichBoss.x,oLichBoss.y,"Instances",oLichProjectile);
		broski.targetx = x ;
		broski.targety = y + sprite_height/2;
		broski.move = true;
	}
}

if(summon_progress < 2 && hp < 30){
	summon_progress++;
	with(oEnemy2Stone){
		var broski = instance_create_layer(oLichBoss.x,oLichBoss.y,"Instances",oLichProjectile);
		broski.targetx = x;
		broski.targety = y + sprite_height/2;
		broski.move = true;
	}
}

if(summon_progress < 3 && hp < 20){
	summon_progress++;
	with(oEnemyMrWStone){
		var broski = instance_create_layer(oLichBoss.x,oLichBoss.y,"Instances",oLichProjectile);
		broski.targetx = x;
		broski.targety = y + sprite_height/2;
		broski.move = true;
	}
}

if(summon_progress < 4 && hp < 10){
	summon_progress++;
	with(oEnemy3Stone){
		var broski = instance_create_layer(oLichBoss.x,oLichBoss.y,"Instances",oLichProjectile);
		broski.targetx = x;
		broski.targety = y + sprite_height/2;
		broski.move = true;
	}
}


if(hp <= 0){
	instance_destroy();	
}

if(oPlayer.x < x){
	image_xscale = 1;	
}else{
	image_xscale = -1;	
}