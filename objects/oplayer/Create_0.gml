/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oController)){
	instance_create_layer(0,0,"Instances",oController);	
}

if(global.grungo){
	sprite_index = sGrungo;	
}

point_loss_frames = 2;
point_loss_cur = 0;

coyote_frames = 9;

can_double_jump = true;

hSpeed = 0;
vSpeed = 0;
walkSpd = 5;
walkAccel = 1.5;
hFrictionGround = 0.5;
hFrictionAir = 0.1;
jumpSpd = 6;
grv = 0.2;
hSpeedFraction = 0.0;
vSpeedFraction = 0.0;

spawnx = x;
spawny = y;

current_song = 0;
song_started = false;
song_length = 0;
song_percent = 0;

enum pState 
{
	normal,
	grappling,
	frozen,
	noControls
}

state = pState.frozen;
instance_create_layer(x - (global.game_width/2),y-(global.game_height/2),"Instances",oCamera);
instance_create_layer(x,y,"Instances",oCarIntro);
instance_create_layer(x,y,"Instances",oWeapon);

current_weapon = 0;

cur_bubble_ammo = global.bubble_ammo;
cur_bubble_rof = global.bubble_rof;

cur_lightning_ammo = global.lightning_ammo;
cur_lightning_dmg = global.lightning_dmg;

cur_fire_ammo = global.fire_ammo;
cur_fire_aoe = global.fire_aoe;

melee_cooldown = 0;
bubble_cooldown = 0;
lightning_cooldown = 0;
fire_cooldown = 0;

redeemed_points = 0;
point_pool = 0;
current_combo = 0;
combo_timer = 0;
combo_timer_max = 4 * 60; //multiplied by room speed