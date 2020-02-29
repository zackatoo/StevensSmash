/// @description Setup new room

if (room == rm_game)
{
	stage = instance_create_depth(0, 0, 50, obj_stage);
	
	HUD = instance_create_depth(0, 0, -100, obj_game_HUD);
	var p = global.numPlayers;
	for (var i = 0; i < p; i++)
	{
		var thisX = playerX + i * playerBuffer;
		characters[i] = instance_create_depth(thisX, playerY, 0, charGetObject(charIDS[i]));
		characters[i].controller = controllers[i];
		characters[i].characterID = charIDS[i];
		characters[i].stage = stage;
		
		characters[i].idleSprite = charGetSprite(charIDS[i], 0);
		characters[i].walkSprite = charGetSprite(charIDS[i], 1);
		characters[i].jabSprite = charGetSprite(charIDS[i], 2);
		characters[i].aerialSprite = charGetSprite(charIDS[i], 3);
		characters[i].sprite_index = characters[i].idleSprite;
		
		HUD.characters[i] = characters[i];
	}
}