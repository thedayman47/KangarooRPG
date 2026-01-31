messages = [];
currentMessage = -1; //Dialogue hasn't started yet
currentChar = 0; //How many characters from the strings have been drawn. Creates a type writer effect.
drawMessage = "";

charSpeed = 0.5; //How fast characters appear.
inputKey = vk_space; //Key used to speed up text.

guiW = display_get_gui_width();
guiH = display_get_gui_height();

