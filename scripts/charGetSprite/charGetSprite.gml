/// charGetSprite(charID, spriteType)
/// @description Returns the name of a character given it's number
/// @param {real} number The number of a character
/// @param {real} spriteType The type of sprite

if (argument1 == 0)
{
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
	switch (argument0)
	{
		case 0: return spr_Attila_Walk;
		case 1: return spr_Attila_Idle;
		case 2: return spr_Attila_Idle;
		case 3: return spr_Attila_Idle;
		default: return spr_testModel;
	}
}
else if (argument1 == 2)
{
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
	switch (argument0)
	{
		case 0: return spr_Atilla_Aerial;
		case 1: return spr_Attila_Idle;
		case 2: return spr_Attila_Idle;
		case 3: return spr_Attila_Idle;
		default: return spr_testModel;
	}
}