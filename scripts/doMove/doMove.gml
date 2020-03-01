// triggers the move on the animal
// arg0: self, arg1: the move

argument0.curMove = argument1;
argument0.hitstun = argument1.moveLag;
argument0.sprite_index = argument1.sprite_index;

// check if something is in hitbox
// TODO: do this every hitbox frame
var hit_enemies = ds_list_create();
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
ds_list_destroy(hit_enemies);