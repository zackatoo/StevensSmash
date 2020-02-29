/// @description Setup new room

if (room == rm_game)
{
	stage = instance_create_depth(0, 0, 0, obj_stage);
	
	HUD = instance_create_depth(0, 0, 0, obj_game_HUD);
	var p = global.numPlayers;
	for (var i = 0; i < p; i++)
	{
		var thisX = playerX + i * playerBuffer;
		characters[i] = instance_create_depth(thisX, playerY, 0, obj_character);
		characters[i].controller = controllers[i];
		characters[i].characterID = charIDS[i];
		characters[i].stage = stage;
		characters[i].idleSprite = spr_Attila_Idle;
		characters[i].walkSprite = undefined;
		characters[i].jabSprite = spr_Attila_Jab;
		characters[i].aerialSprite = spr_Atilla_Aerial;
		
		HUD.characters[i] = characters[i];
	}
}