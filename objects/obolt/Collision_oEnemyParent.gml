/// @description Insert description here
// You can write your code in this editor

if(ds_list_find_index(collided_array,other.id) == -1){
	ds_list_add(collided_array,other.id)
	other.hp -= global.lightning_dmg;
}