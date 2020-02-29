// triggers the move on the animal
// arg0: self, arg1: the move

argument0.curMove = argument1;
argument0.hitstun = argument1.moveLag;
argument0.sprite_index = argument1.sprite_index;

// check if something is in hitbox
var hit_enemies = ds_list_create();
for (var X = x + argument0.hitboxStartX; X <= argument0.hitboxEndX; X++) {
	for (var Y = y + argument0.hitboxStartY; Y <= argument0.hitboxEndY; Y++) {
		var enemies_at_pos = instance_place_list(X, Y, obj_character, hit_enemies, false);
		for (
	}
}
ds_list_destroy(hit_enemies);