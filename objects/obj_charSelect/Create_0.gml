/// @description 

numCharacters = charGetNumber("random");

// Reset num Players if less people want to join in the next game
global.numPlayers = 0;

// Variables for positioning characters to select
charBuffer = 50;
charWidth = (numCharacters + 1) * sprite_get_width(spr_characterIcon) + numCharacters * charBuffer;
charX = room_width / 2 - charWidth / 2
charY = room_height * 0.15;

// Grab controllers that have already been created by title screen
numTempControllers = instance_number(obj_controller);
for (var i = 0; i < numTempControllers; i++) 
{
	// tempControllers is needed to find all of the active controllers
	tempControllers[i] = instance_find(obj_controller, i);
}

for (var i = 0; i < MAX_PLAYERS; i++)
{
	controllers[i] = undefined;
	selectors[i] = undefined;
}

// Variables for positioning player selections
playerBuffer = 200;
playerWidth = MAX_PLAYERS * sprite_get_width(spr_characterIcon) + (MAX_PLAYERS - 1) * playerBuffer;
playerX = room_width / 2 - playerWidth / 2;
playerY = room_height * 0.7;

// Banner
banner = instance_create_depth(0, 0, -50, obj_play_banner);