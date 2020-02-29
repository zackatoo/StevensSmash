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

// character cannot move while in hitstun
hitstun_ctr = 0;

// moveset
curMove = undefined;
// below is set in child class
jab = undefined;
aerial = undefined;
smash = undefined;

// misc stuff to be set by game
controller = undefined; // handed to character by game object
mainSprite = undefined; // set this to idle animation
stage = undefined;