/// @description Insert description here
// You can write your code in this editor

if(visible){
	
//combo bar
draw_set_color(c_aqua);
draw_rectangle(0,0,global.game_width*(combo_timer/combo_timer_max),5,false);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
if(current_combo > 0){
	draw_text_transformed(global.game_width - 10,3,"x"+string(current_combo),4,4,0)	
}
draw_text(global.game_width - 10,3,"crystals: " + string(redeemed_points));
	
	
var hud_scale = 3;
var hud_distance = 2; //in pixels
var hud_height = 12 * hud_scale;

for(var i = 0; i < 4; i++){
	draw_sprite_ext(sWeapons,i,18,15 + (i * (hud_height + hud_distance)),hud_scale,hud_scale,0,-1,1);
}

draw_set_color(c_white);
draw_rectangle(2,3 + (current_weapon * (hud_height + hud_distance)),90,((current_weapon+1) * (hud_height + hud_distance)),true);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(95,45,"x"+string(cur_bubble_ammo));
draw_text(95,80,"x"+string(cur_lightning_ammo));
draw_text(95,120,"x"+string(cur_fire_ammo));

}