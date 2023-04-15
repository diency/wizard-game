/// @description Insert description here
// You can write your code in this editor

if(!oVendingMachine.part_bought && point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !action_time && !in_menu){
	oPlayer.state = pState.noControls;
	in_menu = true;
	
	for(var i = 0; i < num_levels; i++){
		var temp = num_levels - i;
		var billy = instance_create_layer(x+ (sprite_width/2),y - (50 * (temp)),"Instances",oButton);
		billy.my_id = i;
		billy.my_dad = id;
		
		switch(i){
			case 0:
				billy.text = "1 - troll's tower 2"; //troll tower remix + partly new level
				break;
			case 1:
				billy.text = "2 - bottomless pit"; //descent, ammo refresh pickups
				break;
			case 2:
				billy.text = "3 - phylactery factory"; //fuck you die
				break;
		}
	}
	
	//back button
	var bob = instance_create_layer(x + (sprite_width/2),y,"Instances",oButton);
	bob.my_id = num_levels //bc zero indexed
	bob.my_dad = id;
	bob.text = "back";
}else if(!action_time && in_menu){
	action_time = true;	
}