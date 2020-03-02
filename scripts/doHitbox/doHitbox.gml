// arg0: self, arg1: move, arg2: hit_enemies list
var hit_enemies = argument2;
for (var X = x + argument1.hitboxStartX; X <= argument1.hitboxEndX; X++) {
	for (var Y = y + argument1.hitboxStartY; Y <= argument1.hitboxEndY; Y++) {
		var enemies_at_pos = instance_place_list(X, Y, obj_character, hit_enemies, false);
		if (!ds_list_empty(enemies_at_pos)) {
			// for each enemy hit by attack 
			for (var hit_idx = 0; hit_idx < ds_list_size(enemies_at_pos); hit_idx++) {
				// if enemy has not already been hit
				var enemy = ds_list_find_value(enemies_at_pos, hit_idx);
				if (ds_list_find_index(hit_enemies, enemy) == -1) {
					// add to list of hit and hit them
					ds_list_add(hit_enemies, enemy);
					enemy.hitstun = argument1.hitstun;
					enemy.damage_percent += argument1.percent;
					
					enemy.yVel += argument1.knockbackY;
					
					// use direction of character to choose x direction
					if (argument0.image_xscale > 0) {
						enemy.xVel += argument1.knockbackX;
					} else {
						enemy.xVel -= argument1.knockbackX;
					}
					
					// if they are in a move, stop it
					enemy.curMove = undefined;
				}
			}
		}
	}
}