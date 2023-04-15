/// @description Insert description here
// You can write your code in this editor

draw_self();

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70 && !action_time && !in_menu){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if(!oVendingMachine.part_bought){
		if(!global.grungo){
			if(!global.lich_defeated){
				draw_text(x + 32,y - 90,"foolish mortal");
				draw_text(x + 32,y - 70,"thou shall be smited by the gods for my freedom");
				draw_text(x + 32,y - 50,"in my gratitude let me show you");
				draw_text(x + 32,y - 30,"the path to an even greater power");
			}else{
				draw_text(x + 32,y - 70,"...why did you free me again?");
				draw_text(x + 32,y - 50,"didn't I just betray you?");
				draw_text(x + 32,y - 30,"foolish mortal");
			}
		}else{
			draw_text(x + 32,y - 30,"omg grungo hi!!!!!!!!");
		}
		draw_text(x + 32,y - 10,"(press e for expert set)");
	}else{
		draw_text(x + 32,y - 10,"leave me, mortal");
	}
}