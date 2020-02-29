/// @description Setup new room

if (room == rm_game)
{
	var p = global.numPlayers;
	for (var i = 0; i < p; i++)
	{
		var thisX = playerX + i * playerBuffer;
		characters[i] = instance_create_depth(thisX, playerY, 0, obj_character);
		characters[i].controller = controllers[i];
		characters[i].characterID = charIDS[i];
	}
}