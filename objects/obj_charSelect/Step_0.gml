/// @description 

for (var i = 0; i < numTempControllers; i++)
{
	if (tempControllers[i] != undefined && (tempControllers[i].horz != 0 || tempControllers[i].vert != 0))
	{
		var p = global.numPlayers;
		if (p < MAX_PLAYERS)
		{
			controllers[p] = tempControllers[i];
		
			var thisX = playerX + p * (sprite_get_width(spr_characterIcon) + playerBuffer);
			selectors[p] = instance_create_depth(thisX, playerY, -100, obj_selector);
			selectors[p].controller = controllers[p];
			selectors[p].image_index = p;
		
			global.numPlayers = p + 1;
			tempControllers[i] = undefined;
		}
	}
}


// Updates which selectors are hovering over which characters
var p = global.numPlayers;

for (var i = 0; i < p; i++)
{
	
	// Update selected
	if (!selectors[i].selected) 
	{
		selectors[i].selecting = -1;
		if (selectors[i].y > charY && selectors[i].y < charY + sprite_get_height(spr_characterIcon))
		{
			for (var j = 0; j <= numCharacters; j++)
			{
				var thisX = charX + j * (sprite_get_width(spr_characterIcon) + charBuffer);
				if (selectors[i].x > thisX && selectors[i].x < thisX + sprite_get_width(spr_characterIcon))
				{
					selectors[i].selecting = j;
				}
			}
		}
	}
}