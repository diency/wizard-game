/// @description Insert description here
// You can write your code in this editor

draw_self();

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !action_time && !in_menu){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if(!oVendingMachine.part_bought){
		draw_text(x + 32,y - 10,"press E for level select");
	}else{
		draw_text(x + 32,y - 10,"press E to leave");
	}
}

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !action_time && in_menu){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(current_selected != 5){
	switch(current_selected){
		//par total: 75,000
		case 0:
			var text1 = string(global.lv1_hs);
			var text2 = "7,500";
			var text3 = "43,700";
			break;
		case 1:
			var text1 = string(global.lv2_hs);
			var text2 = "13,000";
			var text3 = "85,800";
			break;
		case 2:
			var text1 = string(global.lv3_hs);
			var text2 = "12,000";
			var text3 = "66,600";
			break;
		case 3:
			var text1 = string(global.lv4_hs);
			var text2 = "20,000";
			var text3 = "151,200";
			break;
		case 4:
			var text1 = string(global.lv5_hs);
			var text2 = "22,500";
			var text3 = "224,400";
			break;
	}

	draw_text(x,y + 75,"high score: "+ text1);
	draw_text(x,y + 95,"par: " + text2);
	draw_text(x,y + 115,"max score possible: " + text3);
	
	}
}