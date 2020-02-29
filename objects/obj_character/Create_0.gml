// Character position
x = 0; // this will be set by the stage
y = 0;
xVel = 0;
yVel = 0;
movespeed = 10; // pixels moved per frame
jumpheight = 128; // pixels to jump upwards when jump pressed
fallspeed = 8; // "gravity" pulling down on character per frame
weight = 1; // inverse multiplier for how knockback affects the character
damage_percent = 0; // smash-esque health
stocks = NUM_STOCKS;

// character cannot move while in hitstun
hitstun = 0;

// moveset
curMove = undefined;
// below is set in child class
jab = undefined;
aerial = undefined;
smash = undefined;

// misc stuff to be set by game object
controller = undefined; // handed to character by game object
characterID = 0;		// the ID of the character from charGetNumber
stage = undefined;

// sprites set by game object
idleSprite = undefined;
walkSprite = undefined;