/// @description Check win condition

if (!isGameRoom) exit;

var p = global.numPlayers;
if (p == 1) 
{
	// debug purposes only
	if (characters[0].dead)
	{
		winnerPlayer = 0;
		winnerID = characters[0].characterID;
		alarm[7] = room_speed;
		isGameRoom = false;
	}
}
else
{
	var alivePlayers = 0;
	var aliveID = 0;
	for (var i = 0; i < p; i++)
	{
		if (!characters[i].dead)
		{
			alivePlayers++;
			aliveID = i;
		}
	}
	if (alivePlayers == 1)
	{
		winnerPlayer = aliveID;
		winnerID = characters[aliveID].characterID;
		
		characters[aliveID].dead = true;
		
		alarm[7] = room_speed;
		isGameRoom = false;
	}
}