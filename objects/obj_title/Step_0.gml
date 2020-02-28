/// @description Checks for user input

// Checks for any input from any controller
for (var i = 0; i < MAX_PLAYERS + 1; i++)
{
	if (controllers[i].pressEnter || controllers[i].pressBack)
	{
		room_goto(rm_charSelect);
	}
}