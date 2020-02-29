// detect if player is on ground
var onstage = place_meeting(x, y, stage);
if (onstage) {
	yVel = 0;
} else {
	yVel += fallspeed;
	if (yVel > terminalVel) yVel = terminalVel;
}

if (hitstun > 0) { // true when character is flying through air/hit by move
	hitstun -= 1; // decrease hitstun by one every frame
	if (hitstun == 0) {
		curMove = undefined; // stop doing move
		sprite_index = idleSprite; // jank af way to stop move animation
	}
} else {
	// movement
	if (controller.pressUp && onstage) { // only one jump for now
		// jump
		yVel += jumpheight;
	} else if (controller.vert < 0 && onstage) {
		// crouch
		// TODO: crouch animation
	} else if (onstage) {
		// move left/right
		 // TODO: see if causes bug when hit
	}
	
	// attacks
	if (controller.pressA) {
		if (onstage) {
			// do jab
			xVel = 0; //TEMP: stop and do jab
			doMove(self, jab);
		} else {
			// do aerial
			// TODO aerial animation
			doMove(self, aerial);
		}
	}
}

xVel = controller.horz * movespeed;
if (xVel < 0) image_xscale = 1;
else if (xVel > 0) image_xscale = -1;

if (onstage && abs(xVel) > 0 && image_index != walkSprite) image_index = walkSprite;
else if (image_index != idleSprite) image_index = idleSprite;

// apply velocities
x += xVel;
y += yVel;