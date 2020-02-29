/// playerGetColor(number, secondary)
/// @description Returns the color of a player given it's number
/// @param {real} number The number of a player
/// @param {real} number If it should be secondary or not

if (argument[1] == true)
{
	switch (argument[0])
	{
		case 0: return $00BFFF;
		case 1: return $FFBF00;
		case 2: return $38FFF8;
		case 3: return $00FFBF;
		default: return $000000;
	}
}
else
{
	switch (argument[0])
	{
		case 0: return $0000FF;
		case 1: return $FF0000;
		case 2: return $00F7FF;
		case 3: return $00FF00;
		default: return $000000;
	}	
}