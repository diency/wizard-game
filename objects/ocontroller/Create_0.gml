/// @description Insert description here
// You can write your code in this editor

//particle effects stuff
global.partSystem = part_system_create();
part_system_depth(global.partSystem,-100);

draw_set_font(fnt_vinque);

paused = false;

action_time = false;
current_selected = 0;