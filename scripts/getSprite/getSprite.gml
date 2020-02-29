/// getSprite(charID, spriteType)
/// @description Returns the sprite ID
/// @param {real} number The number of a character
/// @param {real} number The type of sprite

if (argument1 == 0)
{
	// Idle Sprites
	switch (argument0)
	{
		case 0: return spr_Attila_Idle;
		case 1: return spr_Attila_Idle;
		case 2: return spr_Attila_Idle;
		case 3: return spr_Attila_Idle;
		default: return spr_testModel;
	}
}
else if (argument1 == 1)
{
	// Walk Sprites
	switch (argument0)
	{
		case 0: return spr_Attila_Idle;
		case 1: return spr_Attila_Idle;
		case 2: return spr_Attila_Idle;
		case 3: return spr_Attila_Idle;
		default: return spr_testModel;
	}
}
else if (argument1 == 2)
{
	// Jab Sprites
	switch (argument0)
	{
		case 0: return spr_Attila_Jab;
		case 1: return spr_Attila_Idle;
		case 2: return spr_Attila_Idle;
		case 3: return spr_Attila_Idle;
		default: return spr_testModel;
	}
}
else if (argument1 == 3)
{
	// Aerial Sprites
	switch (argument0)
	{
		case 0: return spr_Attila_Aerial;
		case 1: return spr_Attila_Idle;
		case 2: return spr_Attila_Idle;
		case 3: return spr_Attila_Idle;
		default: return spr_testModel;
	}
}