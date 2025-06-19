// Управление
var x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

// Ускорение при беге
is_running = keyboard_check(ord("X"));
move_spd = is_running ? 2 : 1;



// Скорость
xspd = x_input * move_spd;
yspd = y_input * move_spd;

// Направление и танец
var dir = "";
var dancing = false;

// Замирание при диалоге
if (is_dialogue_active()) exit;



if (x_input != 0) {
    dir = (x_input > 0) ? "right" : "left";
} 
else if (keyboard_check(vk_up) && keyboard_check(vk_down)) {
    dancing = true;
    dir = (current_time div 150) mod 2 == 0 ? "up" : "down";
} 
else if (y_input != 0) {
    dir = (y_input > 0) ? "down" : "up";
}

//коллизия
if (place_meeting(x + xspd, y, obj_solid)) xspd = 0;
if (place_meeting(x, y + yspd, obj_solid)) yspd = 0;

// Тип движения
var move_type = is_running ? "run" : "walk";

// Получение ключа и спрайта
if (dir != "") {
    var key = player_appearance + "_" + move_type + "_" + dir;
    var sprite = variable_struct_get(sprite_table, key);
    
    if (sprite != undefined) {
        sprite_index = sprite;
        image_speed = 1;
    }
} else {
    image_speed = 0;
    image_index = 0;
}



// Передвижение
x += xspd;
y += yspd;
