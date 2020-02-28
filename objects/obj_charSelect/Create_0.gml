/// @description 

numCharacters = charGetNumber("random");

charBuffer = 50;
charWidth = numCharacters * sprite_get_width(spr_characterIcon) + (numCharacters - 1) * charBuffer;
charX = room_width / 2 - charWidth / 2
charY = room_height * 0.3;