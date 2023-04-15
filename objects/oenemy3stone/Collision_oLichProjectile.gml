/// @description Insert description here
// You can write your code in this editor

var goober = instance_create_layer(x,y,"Instances",oEnemy3);
goober.alarm[0] = irandom_range(10,30);
instance_destroy(other);
instance_destroy();