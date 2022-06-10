/// @description Insert description here
// You can write your code in this editor

if(action_time){ //back button
	action_time = false;
	in_menu = false;
	oPlayer.state = pState.normal;
	instance_destroy(oButton);
	instance_destroy(oBar);
}

if(in_menu){
	//up and down buttons
	if(keyboard_check_pressed(ord("W")) || 	keyboard_check_pressed(vk_up)){
		current_selected--;
		if(current_selected < 0){
			current_selected = num_upgrades;	
		}
	}
	if(keyboard_check_pressed(ord("S")) || 	keyboard_check_pressed(vk_down)){
		current_selected++;
		if(current_selected > num_upgrades){
			current_selected = 0;	
		}
	}
	//L and R buttons
	if(keyboard_check_pressed(ord("A")) || 	keyboard_check_pressed(vk_left)){
		left = true;
	}
	if(keyboard_check_pressed(ord("D")) || 	keyboard_check_pressed(vk_right)){
		right = true;
	}
	
	
	if(left){ //SELLING UPGRADES
		left = false;
		
		if(current_selected != num_upgrades){ //do nothing if its the back button
			if(tiers[| current_selected] > 0){ //dont sell if you have none
				
				//play coins noise
				global.available_cash += upgrade_cost * tiers[| current_selected]
				switch(current_selected){
					case 0:
						global.bubble_ammo -= upgrade_bubble_ammo;
						break;
					case 1:
						global.bubble_rof -= upgrade_bubble_rof;
						break;
					case 2:
						global.lightning_ammo -= upgrade_lightning_ammo;
						break;
					case 3:
						global.lightning_dmg -= upgrade_lightning_dmg;
						break;
					case 4:
						global.fire_ammo -= upgrade_fire_ammo;
						break;
					case 5:
						global.fire_aoe -= upgrade_fire_ammo;
						break;
				}
				with(oBar){
					if(oShop.current_selected == my_id){
						image_index--;
					}
				}
				audio_play_sound(sndCoins,0,0);
				tiers[| current_selected] -= 1;
			}
		}
	}
	
	if(right){ //BUYING UPGRADES
		right = false;
		
		if(current_selected != num_upgrades){ //do nothing if its the back button
			if(tiers[| current_selected] < max_upgrade && global.available_cash >= upgrade_cost * (tiers[| current_selected] + 1)){ 
				//dont buy if not enough money or if at max
				
				tiers[| current_selected] += 1;
				//play cha ching noise
				global.available_cash -= upgrade_cost * tiers[| current_selected];
				switch(current_selected){
					case 0:
						global.bubble_ammo += upgrade_bubble_ammo;
						break;
					case 1:
						global.bubble_rof += upgrade_bubble_rof;
						break;
					case 2:
						global.lightning_ammo += upgrade_lightning_ammo;
						break;
					case 3:
						global.lightning_dmg += upgrade_lightning_dmg;
						break;
					case 4:
						global.fire_ammo += upgrade_fire_ammo;
						break;
					case 5:
						global.fire_aoe += upgrade_fire_ammo;
						break;
				}
				with(oBar){
					if(oShop.current_selected == my_id){
						image_index++;	
					}
				}
				audio_play_sound(sndChaching,0,0);
			}
		}
	}
	
}