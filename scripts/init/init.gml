// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.grapple_speed = 8;

global.game_width = 768;
global.game_height = 576;

global.bubble_ammo = 30;
global.bubble_rof = 15;
global.lightning_ammo = 1;
global.lightning_dmg = 8;
global.fire_ammo = 1;
global.fire_aoe = 4;

global.lv1_hs = 0;
global.lv2_hs = 0;
global.lv3_hs = 0;
global.lv4_hs = 0;
global.lv5_hs = 0;

global.ex1_hs = 0;
global.ex2_hs = 0;
global.ex3_hs = 0;

global.lich_freed = false;
global.lich_defeated = false;

global.upgrade_cost = 4500;

global.available_cash = global.upgrade_cost*2;
global.net_worth = global.upgrade_cost*2;

global.cheating = true;
global.grungo = false;
global.epic_mode = false;


window_set_size(global.game_width,global.game_height);
surface_resize(application_surface, global.game_width, global.game_height);

#region Particle Types

//jump particle
var _p = part_type_create();

part_type_shape(_p,pt_shape_disk); //shape
part_type_life(_p,20,40); //min life, max life
part_type_color2(_p,c_gray,c_ltgray); //color
part_type_alpha2(_p,1,0); //start/end alphas
part_type_size(_p,0.01,.1,0,0) //min size, max, incr, wiggle
part_type_speed(_p,2,5,-.1,0); //min, max, decrease, wiggle
part_type_direction(_p,225,315,0,0); //min, max, decrease, wiggle

global.ptBasic = _p;

//checkpoint particles
//jump particle
var _p2 = part_type_create();

part_type_shape(_p2,pt_shape_disk); //shape
part_type_life(_p2,20,40); //min life, max life
part_type_color2(_p2,c_lime,c_green); //color
part_type_alpha2(_p2,1,0); //start/end alphas
part_type_size(_p2,0.01,.1,0,0) //min size, max, incr, wiggle
part_type_speed(_p2,2,5,-.1,0); //min, max, decrease, wiggle
part_type_direction(_p2,45,135,0,0); //min, max, decrease, wiggle

global.ptCheckpoint = _p2;

#endregion