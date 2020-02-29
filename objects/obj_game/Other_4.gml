/// @description Setup new room

if (room == rm_game)
{
	HUD = instance_create_depth(0, 0, 0, obj_game_HUD);
	var p = global.numPlayers;
	for (var i = 0; i < p; i++)
	{
		var thisX = playerX + i * playerBuffer;
		characters[i] = instance_create_depth(thisX, playerY, 0, obj_character);
		characters[i].controller = controllers[i];
		characters[i].characterID = charIDS[i];
		
		HUD.characters[i] = characters[i];
	}
}