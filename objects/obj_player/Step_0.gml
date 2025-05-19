// Передвижение
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

// коллизия
if place_meeting(x+xspd, y, obj_wall){
	xspd = 0;
}

if place_meeting(x, y+yspd, obj_wall){
	yspd = 0;
}

// анимация передвижения
if xspd > 0 {
	sprite_index = sPlayerRight;
}
else if xspd < 0 {
	sprite_index = sPlayerLeft;
}
else if yspd > 0 {
	sprite_index = sPlayerDown;
}
else if yspd < 0 {
	sprite_index = sPlayerUp;
}


if (xspd != 0 or yspd != 0){
	image_speed = 1;
}
else {
	image_speed = 0;
	image_index = 0;
}

// обязательно после коллизии -_-
x += xspd;
y += yspd;