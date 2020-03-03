/// @description draw hitbox when move goin
draw_self();

if (curMove != undefined and curMove.curFrame >= curMove.startFrame and curMove.curFrame <= curMove.endFrame) {
	var startX = min(x + curMove.hitboxStartX * image_xscale, x + curMove.hitboxEndX * image_xscale);
	var endX = max(x + curMove.hitboxStartX * image_xscale, x + curMove.hitboxEndX * image_xscale);
	var startY = min(y + curMove.hitboxStartY, y + curMove.hitboxEndY);
	var endY = max(y + curMove.hitboxStartY, y + curMove.hitboxEndY);
	
	show_debug_message(string(curMove.hitboxStartX) + " " + string(curMove.hitboxStartY) + " " + 
		string(curMove.hitboxEndX) + " " + string(curMove.hitboxEndY));
	draw_set_color(c_blue);
	//draw_rectangle(curMove.hitboxStartX, curMove.hitboxStartY, curMove.hitboxEndX, curMove.hitboxEndY, false);
	draw_rectangle(startX, startY, endX, endY, false);
}