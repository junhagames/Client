/// @param speed

var spd = argument0;

var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

hspd = (right - left) * spd;
vspd = (down - up) * spd;

x += hspd ;
y += vspd;