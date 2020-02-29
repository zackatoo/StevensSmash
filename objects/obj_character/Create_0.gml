// Character position

xVel = 0;
yVel = 0;
movespeed = 6; // pixels moved per frame
jumpheight = -28; // pixels to jump upwards when jump pressed
fallspeed = 1.4; // "gravity" pulling down on character per frame
terminalVel = 20;
weight = 1; // inverse multiplier for how knockback affects the character
damage_percent = 0; // smash-esque health
stocks = NUM_STOCKS;

// respawn coordinates
respawnX = x;
respawnY = y;
invincibility = 0;
invincibleTrans = 0.05;

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