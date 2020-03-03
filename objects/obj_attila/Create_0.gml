/// @description Attila create block

event_inherited(); // runs parent create

//jab = instance_create_depth(0, 0, 0, attila_jab);
//aerial = instance_create_depth(0, 0, 0, attila_nair);
//smash = instance_create_depth(0, 0, 0, attila_smash);

jabObj = attila_jab;
aerialObj = attila_nair;
smashObj = attila_smash;

idleSprite = spr_Attila_Idle;
walkSprite = spr_Attila_Walk;