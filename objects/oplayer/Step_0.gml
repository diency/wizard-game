/// @description Insert description here
// You can write your code in this editor

grounded = (place_meeting(x,y+1,obj_wall_parent));
//ceild = (place_meeting(x,y-1,obj_wall_parent));

//handle coyote frames
if(grounded){
	coyote_frames = 9;
	can_double_jump = true;
}
if(coyote_frames > 0){
	coyote_frames--;	
}

//get inputs
var _keyLeft = keyboard_check(ord("A"));
var _keyRight = keyboard_check(ord("D"));
var _keyJump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);

//weapon swap controls
if(keyboard_check_pressed(ord("1"))){
	current_weapon = 0;
	audio_play_sound(sndEquip,0,0);
}else if(keyboard_check_pressed(ord("2"))){
	current_weapon = 1;
	audio_play_sound(sndEquip,0,0);
}else if(keyboard_check_pressed(ord("3"))){
	current_weapon = 2;
	audio_play_sound(sndEquip,0,0);
}else if(keyboard_check_pressed(ord("4"))){
	current_weapon = 3;
	audio_play_sound(sndEquip,0,0);
}
//mousewheel weapon switching
if(mouse_wheel_down()){
	current_weapon++;
	audio_play_sound(sndEquip,0,0);
}
if(mouse_wheel_up()){
	current_weapon--;
	audio_play_sound(sndEquip,0,0);
}
//weapon switching sanity check
if(current_weapon < 0){
	current_weapon = 3;	
}else if(current_weapon > 3){
	current_weapon = 0;	
}

//main state machine for player
switch(state){
	case pState.normal:
	
		scr_use_weapon();
	
		var dir = _keyRight - _keyLeft;
		hSpeed += dir * walkAccel;
		
		var hFriction = hFrictionGround;
		if(!grounded) hFriction = hFrictionAir;
			
		if(dir == 0){
			hSpeed = Approach(hSpeed,0,hFriction);
		}
		hSpeed = clamp(hSpeed,-walkSpd,walkSpd);
		
		vSpeed += grv;
		//hsp_extra = Approach(hsp_extra,0,hFriction);
		
		if(_keyJump && coyote_frames > 0){
			coyote_frames = 0;
			grounded = false;
			vSpeedFraction = 0;
			if(vSpeed > 0){
				vSpeed = 0;	
			}
			audio_play_sound(sndJump,0,0);
			vSpeed -= jumpSpd;
		}else if(_keyJump && can_double_jump){
			can_double_jump = false;
			coyote_frames = 0;
			grounded = false;
			vSpeedFraction = 0;
			if(vSpeed > 0){
				vSpeed = 0;	
			}
			vSpeed -= jumpSpd;
			audio_sound_pitch(audio_play_sound(sndJump,0,0),1.2);
			part_particles_create(global.partSystem,x,y,global.ptBasic,6);
		}
		
		if(mouse_check_button_pressed(mb_right)){
			var angle = point_direction(x,y,mouse_x,mouse_y);
			var distance = point_distance(x,y,mouse_x,mouse_y) + 500;
				
			return_arr = scr_raycast(x,y,x + lengthdir_x(distance,angle),y + lengthdir_y(distance,angle),obj_grappleables_parent);
			
			if(return_arr[0] != noone && !collision_line(x,y,return_arr[1],return_arr[2],obj_non_grappleable_parent,false,false)){
				grapple_target_x = return_arr[1];
				grapple_target_y = return_arr[2];
				
				grapple_angle = point_direction(x,y,grapple_target_x,grapple_target_y);
				
				state = pState.grappling;
				audio_play_sound(sndBoomp,0,0);
			}
		}
		
		break;
	case pState.grappling:
	
		scr_use_weapon();
	
		can_double_jump = true;
		
		hSpeed = lengthdir_x(global.grapple_speed,grapple_angle);
		vSpeed = lengthdir_y(global.grapple_speed,grapple_angle);
		
		if(mouse_check_button_released(mb_right) || point_distance(x,y,grapple_target_x,grapple_target_y) < global.grapple_speed * 2){
			state = pState.normal;
		}
		if(_keyJump){
			coyote_frames = 0;
			grounded = false;
			state = pState.normal;
			vSpeedFraction = 0;
			if(vSpeed > 0){
				vSpeed = 0;	
			}
			vSpeed -= jumpSpd;
			audio_play_sound(sndJump,0,0);
		}
		
		break;
	case pState.noControls:
		
		//player cant press any buttons but still affected by gravity and such
		
		var hFriction = hFrictionGround;
		if(!grounded) hFriction = hFrictionAir;
		hSpeed = Approach(hSpeed,0,hFriction);
		
		hSpeed = clamp(hSpeed,-walkSpd,walkSpd);
		
		vSpeed += grv;
		//hsp_extra = Approach(hsp_extra,0,hFriction);
		break;
		
	case pState.frozen:
	
		//player will not move at all
	
		hSpeed = 0;
		vSpeed = 0;
		break;
}

hSpeed += hSpeedFraction;
vSpeed += vSpeedFraction;
hSpeedFraction = frac(hSpeed);
vSpeedFraction = frac(vSpeed);
hSpeed -= hSpeedFraction;
vSpeed -= vSpeedFraction;

finalHSpeed = hSpeed; //in case we want to add other stuff like kickback (but not kickback lol)
finalVSpeed = vSpeed;

//horz collisions
if(place_meeting(x+finalHSpeed,y,obj_wall_parent)){
	var _hstep = sign(finalHSpeed);
	finalHSpeed = 0;
	hSpeed = 0;
	hSpeedFraction = 0;
	while(!place_meeting(x+_hstep,y,obj_wall_parent)) x += _hstep;
}
x += finalHSpeed;

//vert collisions
if(place_meeting(x,y+finalVSpeed,obj_wall_parent)){
	var _vstep = sign(finalVSpeed);
	finalVSpeed = 0;
	vSpeed = 0;
	vSpeedFraction = 0;
	while(!place_meeting(x,y+_vstep,obj_wall_parent)) y += _vstep;
}
y += finalVSpeed;

//look at mouse
if(mouse_x > x){
	image_xscale = 1;
}else{
	image_xscale = -1;
}

//die from falling off edge of map
if(y > room_height + 50){
	scr_player_die();	
}

//set checkpoint spawn
var bruh = instance_place(x,y+1,oCheckpoint)
if(bruh != noone){
	part_particles_create(global.partSystem,x,y,global.ptCheckpoint,1);
	spawnx = bruh.x; //so that you dont spawn on the edge of the block
	spawny = y; //so that you spawn at the correct height
}

//gun cooldown vars
if(melee_cooldown > 0){
	melee_cooldown--;	
}
if(bubble_cooldown > 0){
	bubble_cooldown--;
}
if(lightning_cooldown > 0){
	lightning_cooldown--;	
}
if(fire_cooldown > 0){
	fire_cooldown--;	
}

//combo timer
if(combo_timer > 0){
	combo_timer--;	
}else if(point_pool != 0){
	redeemed_points += point_pool * current_combo;
	current_combo = 0;
	point_pool = 0;
	//play combo end noise
}
if(instance_exists(oCreature)){
	if(!oCreature.collided && !audio_is_playing(current_song) && song_started && redeemed_points > 0){
		redeemed_points = Approach(redeemed_points,0,1);
	}
}