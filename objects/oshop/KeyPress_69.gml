/// @description Insert description here
// You can write your code in this editor

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !in_menu && !oVendingMachine.part_bought){
	oPlayer.state = pState.noControls;
	in_menu = true;
	
	//scr_camera_go_here(x,y-100,10);
	
	for(var i = 0; i < num_upgrades; i++){
		var temp = num_upgrades - i;
		var billy = instance_create_layer(x+ (sprite_width/2),y - 20 - (45 * (temp)),"Instances",oBar);
		billy.my_id = i;
		billy.my_dad = id;
		billy.image_index = tiers[| i];
		
		switch(i){
			case 0:
				billy.text = "bubble ammo";
				break;
			case 1:
				billy.text = "bubble rof";
				break;
			case 2:
				billy.text = "lightning ammo";
				break;
			case 3:
				billy.text = "lightning dmg";
				break;
			case 4:
				billy.text = "fire ammo";
				break;
			case 5:
				billy.text = "fire aoe";
				break;
		}
	}
	
	//back button
	var bob = instance_create_layer(x + (sprite_width/2),y-20,"Instances",oButton);
	bob.my_id = num_upgrades //bc zero indexed
	bob.my_dad = id;
	bob.text = "back";
}else if(in_menu && current_selected == num_upgrades){
	in_menu = false;
	oPlayer.state = pState.normal;
	instance_destroy(oButton);
	instance_destroy(oBar);
}