// arg0: self, arg1: move, arg2: hit_enemies list
var hit_enemies = argument2;

var mov_hitstun = argument1.hitstun;
var mov_percent = argument1.percent;
var mov_xBack = argument1.knockbackX;
var mov_yBack = argument1.knockbackY;

var startX = min(x + argument1.hitboxStartX * argument0.image_xscale, x + argument1.hitboxEndX * argument0.image_xscale);
var endX = max(x + argument1.hitboxStartX * argument0.image_xscale, x + argument1.hitboxEndX * argument0.image_xscale);
var startY = min(y + argument1.hitboxStartY, y + argument1.hitboxEndY);
var endY = max(y + argument1.hitboxStartY, y + argument1.hitboxEndY);

//show_debug_message(string(startX) + " X " + string(endX));
//show_debug_message(string(startY) + " Y " + string(endY));

/*
// check on x not whole box
for (var offset = 0; offset < endX-startX; offset++) {
//for (var X = startX; X <= endX; X++) {
	var X = startX + offset;
	var Y = startY + offset;
	//for (var Y = startY; Y <= endY; Y++) {
		//if (X-x != Y-y) continue; // check on diag
		var enemies_at_pos = instance_place_list(X, Y, obj_character, hit_enemies, false);
		if (!ds_list_empty(enemies_at_pos)) {
			// for each enemy hit by attack 
			for (var hit_idx = 0; hit_idx < ds_list_size(enemies_at_pos); hit_idx++) {
				// if enemy has not already been hit
				var enemy = ds_list_find_value(enemies_at_pos, hit_idx);
				if (ds_list_find_index(hit_enemies, enemy) == -1 and enemy != undefined and enemy != argument0) {
					// add to list of hit and hit them
					ds_list_add(hit_enemies, enemy);
					
					enemy.hitstun = mov_hitstun;
					enemy.damage_percent += mov_percent;
					
					enemy.yVel += mov_yBack;
					
					// use direction of character to choose x direction
					if (argument0.image_xscale > 0) {
						enemy.xVel += mov_xBack;
					} else {
						enemy.xVel -= mov_xBack;
					}
					
					// if they are in a move, stop it
					if (enemy.curMove != undefined)
					{
					instance_destroy(enemy.curMove);
					}
					enemy.curMove = undefined;
				}
			}
		//}
	}
}
*/

// collision rectangle method
var enemyList = ds_list_create();
var numEnemies = collision_rectangle_list(startX, startY, endX, endY, obj_character, false, true, enemyList, false);
if (numEnemies > 0) {
	
	for (var i = 0; i < numEnemies; i++) {
		var enemy = enemyList[|i];
		if (enemy.invincibility == 0) {
			enemy.hitstun = mov_hitstun;
			enemy.damage_percent += mov_percent;
					
			enemy.yVel += mov_yBack;
					
			// use direction of character to choose x direction
			if (argument0.image_xscale > 0) {
				enemy.xVel -= mov_xBack;
			} else {
				enemy.xVel += mov_xBack;
			}
					
			// if they are in a move, stop it
			if (enemy.curMove != undefined) {
				instance_destroy(enemy.curMove);
			}
			enemy.curMove = undefined;
		}
	}
}

ds_list_destroy(enemyList);