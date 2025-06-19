// Инициализация глобальных переменных
if (!variable_global_exists("first_play")) {
    global.first_play = true;
    global.reset_count = 0;
    global.route = "neutral";
    global.save_exists = false;
}


menu_state = "main";
menu_options = ["Start", "Parameters", "Quit"];
submenu_options = ["Continue", "Reset"];
submenu_choice = 0;
menu_choice = 0;
pulse = 0; // для анимации