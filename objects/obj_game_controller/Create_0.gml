// Инициализация глобальных переменных
if (!variable_global_exists("first_play")) {
    global.first_play = true;
    global.reset_count = 0;
    global.route = "neutral"; // "pacifist", "genocide", "undefined"
    global.karma = 0;
    global.lv = 1;
    global.exp = 0;
    global.can_spare = false;
}

menu_state = "main";
menu_options = ["Start", "Parameters", "Quit"];
menu_choice = 0;
pulse = 0; // для анимации