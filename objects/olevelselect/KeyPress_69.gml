/// @description Insert description here
// You can write your code in this editor

if(oVendingMachine.part_bought){
	
	oPlayer.state = pState.frozen;
	oPlayer.visible = false;
	the_end = true;
	oCamera.state = cState.frozen;
	alarm[1] = 120;
	audio_stop_all();
	audio_play_sound(sndRevving,0,0);
	
}else{

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !action_time && !in_menu){
	oPlayer.state = pState.noControls;
	in_menu = true;
	
	for(var i = 0; i < num_levels; i++){
		var temp = num_levels - i;
		var billy = instance_create_layer(x+ (sprite_width/2),y - (50 * (temp)),"Instances",oButton);
		billy.my_id = i;
		billy.my_dad = id;
		
		switch(i){
			case 0:
				billy.text = "1 - the dungeon"; //dungeon level
				break;
			case 1:
				billy.text = "2 - squire"; //floating islands
				break;
			case 2:
				billy.text = "3 - a new quest"; //temple/annoying ceiling level
				break;
			case 3:
				billy.text = "4 - troll's tower"; //tower level
				break;
			case 4:
				billy.text = "5 - it's real"; //ridiculous combat dungeon
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

}