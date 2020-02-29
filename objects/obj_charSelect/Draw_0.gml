/// @description draws character select screen

for (var i = 0; i <= numCharacters; i++)
{
	var thisX = charX + i * (sprite_get_width(spr_characterIcon) + charBuffer);
	draw_rectangle_color(thisX, charY, thisX + sprite_get_width(spr_characterIcon), charY + sprite_get_height(spr_characterIcon), c_gray, c_gray, c_gray, c_gray, false);
	draw_sprite(spr_characterIcon, i, thisX, charY);
	
	var textX = thisX + sprite_get_width(spr_characterIcon) / 2;
	var textY = charY + sprite_get_height(spr_characterIcon) * 0.9;
	draw_text_outline(textX, textY, c_black, c_white, charGetName(i));
}

var p = global.numPlayers;
for (var i = 0; i < p; i++)
{
	var thisX = playerX + i * (sprite_get_width(spr_characterIcon) + playerBuffer);
	var col1 = playerGetColor(i, false);
	var col2 = playerGetColor(i, true);
	draw_rectangle_color(thisX, playerY, thisX + sprite_get_width(spr_characterIcon), playerY + sprite_get_height(spr_characterIcon), col2, col1, col2, col1, false);
	
	var textX = thisX + sprite_get_width(spr_characterIcon) / 2;
	var textY = playerY + sprite_get_height(spr_characterIcon) * 1.1;
	if (selectors[i].selecting != -1)
	{
		draw_text_outline(textX, textY, c_black, col2, charGetName(selectors[i].selecting));
		draw_sprite(spr_characterIcon, selectors[i].selecting, thisX, playerY);
	}
}