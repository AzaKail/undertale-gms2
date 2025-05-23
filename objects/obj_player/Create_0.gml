/// Инициализация переменных

// Коорды при загрузке / переходе
if (variable_global_exists("load_x")) {
    x = global.load_x;
    y = global.load_y;
}
// Внешность
player_appearance = "default";

// Скорость
xspd = 0;
yspd = 0;
move_spd = 1;
is_running = false; // режим бега

// Таблица спрайтов: ключи — строки типа "default_walk_right"
sprite_table = {
    "default_walk_up":    sPlayerUp,
    "default_walk_down":  sPlayerDown,
    "default_walk_left":  sPlayerLeft,
    "default_walk_right": sPlayerRight,
    
    "default_run_up":     sPlayerRunUp,
    "default_run_down":   sPlayerRunDown,
    "default_run_left":   sPlayerRunLeft,
    "default_run_right":  sPlayerRunRight,

    /*"dusted_walk_up":    sDustWalkUp,
    "dusted_walk_down":  sDustWalkDown,
    "dusted_walk_left":  sDustWalkLeft,
    "dusted_walk_right": sDustWalkRight,
    "dusted_run_up":     sDustRunUp,
    "dusted_run_down":   sDustRunDown,
    "dusted_run_left":   sDustRunLeft,
    "dusted_run_right":  sDustRunRight*/
};
