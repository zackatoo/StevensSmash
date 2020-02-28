/// @description draws character select screen

for (var i = 0; i <= numCharacters; i++)
{
	var thisX = charX + i * sprite_get_width(spr_characterIcon) + (i-1) * charBuffer;
	draw_sprite(spr_characterIcon, i, thisX, charY);
	
	var textX = thisX + sprite_get_width(spr_characterIcon) / 2;
	var textY = charY + sprite_get_height(spr_characterIcon) * 0.8;
	draw_text_outline(textX, textY, c_black, c_white, charGetName(i));
}