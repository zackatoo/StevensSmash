/// @description Initalize keybinds

persistent = true;

// The keybind dictates which key to check for which action. 
// The player can change these in the settings. 
// The keybind is stored in the settings file, the ones below are just the defaults.

keyboard_up = ord("W");
keyboard_down = ord("S");
keyboard_left = ord("A");
keyboard_right = ord("D");

keyboard_pad_up = vk_up;
keyboard_pad_down = vk_down;
keyboard_pad_left = vk_left;
keyboard_pad_right = vk_right;

keyboard_escape = vk_escape;
keyboard_enter = vk_enter;
keyboard_back = vk_backspace;
keyboard_jump = vk_space;

gamepad_vert = gp_axislv;
gamepad_horz = gp_axislh;

gamepad_up = gp_padu;
gamepad_down = gp_padd;
gamepad_left = gp_padl;
gamepad_right = gp_padr;

gamepad_escape = gp_start;
gamepad_enter = gp_face1;
gamepad_back = gp_face2;
gamepad_jump = gp_face3;