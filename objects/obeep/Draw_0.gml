/// @description Insert description here
// You can write your code in this editor

draw_self();

if(point_distance(x,y,oPlayer.x,oPlayer.y) < 70){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	switch(text_num){
		case 0:
			message1 = "we could probably get the part somewhere else,";
			message2 = "but if you insist...";
			break;
			
		case 1:
			message1 = "im so glad we're friends!";
			message2 = "";
			break;
			
		case 2:
			message1 = "not sure where this music is coming from";
			message2 = "but i like it!";
			
		case 3:
			message1 = "maybe you can teach me some of your";
			message2 = "spells one day... that sounds fun!";
			
		case 4:
			message1 = "i heard barry the bear is selling magic";
			message2 = "items now... where'd he get those?";
	}
	draw_text(x,y - 40,message1);
	draw_text(x,y - 20,message2);
}