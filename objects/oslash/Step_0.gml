/// @description Insert description here
// You can write your code in this editor

x += move_x;
y += move_y;

if(abs(move_x) + abs(move_y) > 2){
    move_x /= 1.15;
    move_y /= 1.15;
} else{
    image_index++
}
if(image_index == 5){
    instance_destroy();
}