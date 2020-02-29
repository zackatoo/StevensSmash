/// @description damage other character

if (curMove != undefined) { // triggers when character is performing move
	other.percent += curMove.percent;
	other.xVel += curMove.knockbackX;
	other.yVel += curMove.knockbackY;
	other.hitstun = curMove.hitstun;
	other.curMove = undefined;

	// user move lag
	hitstun = curMove.moveLag;
}