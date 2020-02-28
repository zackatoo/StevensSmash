/// @description Initalize controls

// This object abstracts away the player's method of input (keyboard vs gamepad)
// and just provides the necessary information to the rest of the game.
// It is less efficent to do it this way, but much easier to read in the code.

persistent = true;

// Active tells if the inputs should be checked or not. (true = check the inputs)

active = true;

// Keybind is the keybind object which holds the information about which keys perform which actions

keybind = undefined;

// Gamepad tells if this is a gamepad or keyboard. 
// Device is the index of the connected gamepad.

gamepad = false;
device = 0;

// The presses are true on the first frame the key is pressed and false until the next one.

pressUp = false;
pressDown = false;
pressLeft = false;
pressRight = false;

pressPadUp = false;
pressPadDown = false;
pressPadLeft = false;
pressPadRight = false;

pressEscape = false
pressEnter = false;
pressBack = false;

// The no presses are a real value between -1 and 1 dictating how far the stick is being pressed.
// When using a keyboard, these will always be -1, 0, or 1, never between.

vert = 0;
horz = 0;