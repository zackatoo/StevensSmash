/// @description draws character select screen

for (var i = 0; i <= numCharacters; i++)
{
	var thisX = charX + i * sprite_get_width(spr_characterIcon) + (i-1) * charBuffer;
	draw_rectangle_color(thisX, charY, thisX + sprite_get_width(spr_characterIcon), charY + sprite_get_height(spr_characterIcon), c_gray, c_gray, c_gray, c_gray, false);
	draw_sprite(spr_characterIcon, i, thisX, charY);
	
	var textX = thisX + sprite_get_width(spr_characterIcon) / 2;
	var textY = charY + sprite_get_height(spr_characterIcon) * 0.9;
	draw_text_outline(textX, textY, c_black, c_white, charGetName(i));
}