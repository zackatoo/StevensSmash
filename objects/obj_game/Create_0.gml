/// @description 

persistent = true;

// These are passed by obj_charSelect when obj is created 
controllers = undefined;
charIDS[0] = undefined;

// These are initalized in Room Start event
characters[0] = undefined;
HUD = undefined;
stage = undefined;

// player buffer is the distance between characters when they spawn in
playerBuffer = 200;
playerWidth = playerBuffer * (global.numPlayers - 1);
playerX = room_width / 2 - playerWidth / 2;
playerY = room_height / 2;