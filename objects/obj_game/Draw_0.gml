/// @description Draws win room

if (isWinRoom)
{
	draw_sprite(spr_characterIcon, winnerID, 400, 400);
	var color = playerGetColor(winnerPlayer, true);

	draw_set_font(fnt_huge);
	draw_text_outline(1200, room_height / 2, c_black, color, "Player " + string(winnerPlayer + 1) + " Wins!");
	draw_set_font(fnt_medium);
	
	if (isActive)
	{
		var p = global.numPlayers;
		for (var i = 0; i < p; i++)
		{
			if (controllers[i].pressA || controllers[i].pressB)
			{
				room_goto(rm_charSelect);
			}
		}
	}
}