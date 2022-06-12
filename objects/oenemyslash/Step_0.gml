/// @description Insert description here
// You can write your code in this editor

x += moveX;
y += moveY;

if(abs(moveX) + abs(moveY) > 2){
    moveX /= 1.15;
    moveY /= 1.15;
} else{
    image_index++
}
if(image_index == 5){
    instance_destroy();
}