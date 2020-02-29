/// @description 

x += controller.horz * spd;
y += controller.vert * spd;

if (x < sprite_width) x = sprite_width;
if (x > room_width - sprite_width) x = room_width - sprite_width;
if (y < sprite_height) y = sprite_height;
if (y > room_height - sprite_height) y = room_height - sprite_height;