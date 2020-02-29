/// @description First object to run in the game

// Randomize the seed for future random calls
randomize();

// Create the globals object
instance_create_depth(0, 0, 0, obj_globals);

alarm[0] = room_speed * 2;