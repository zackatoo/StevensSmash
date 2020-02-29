/// @description 

numCharacters = charGetNumber("random");

charBuffer = 50;
charWidth = (numCharacters + 1) * sprite_get_width(spr_characterIcon) + numCharacters * charBuffer;
charX = room_width / 2 - charWidth / 2
charY = room_height * 0.3;