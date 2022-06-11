/// @description Insert description here
// You can write your code in this editor

in_menu = false;
action_time = false;
left = false;
right = false;
current_selected = 0;

depth = 2;

num_upgrades = 6;

dontspam = true;

upgrade_cost = global.upgrade_cost;
max_upgrade = 4;

//the amount which purchasing an upgrade gives to each category
//basically just formatted like this so its easy to change later if we fuck up balance :)
upgrade_bubble_ammo = 30;
upgrade_bubble_rof = -3;
upgrade_lightning_ammo = 3;
upgrade_lightning_dmg = 2;
upgrade_fire_ammo = 2;
upgrade_fire_aoe = 2;

//the current tier of each upgrade
tier_bubble_ammo = (global.bubble_ammo - 30) div upgrade_bubble_ammo;
tier_bubble_rof = (15 - global.bubble_rof) div (upgrade_bubble_rof * -1);
tier_lightning_ammo = (global.lightning_ammo - 1) div upgrade_lightning_ammo;
tier_lightning_dmg = (global.lightning_dmg - 8) div upgrade_lightning_dmg;
tier_fire_ammo = (global.fire_ammo - 1) div upgrade_fire_ammo;
tier_fire_aoe = (global.fire_aoe - 4) div upgrade_fire_aoe;

tiers = ds_list_create();
ds_list_add(tiers,tier_bubble_ammo,tier_bubble_rof,tier_lightning_ammo,tier_lightning_dmg,tier_fire_ammo,tier_fire_aoe);