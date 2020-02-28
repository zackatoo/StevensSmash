// detect if player is on ground
// TODO: get stage object
var onstage = place_meeting(x, y, stage);
if (onstage) {
	yVel = 0;
} else {
	yVel -= fallspeed;
}

if (hitstun > 0) { // true when character is flying through air/hit by move
	
	
	hitstun -= 1; // decrease hitstun by one every frame
} else {
	// movement
	if (controller.pressUp && onstage) { // only one jump for now
		// jump
		yVel += jumpheight;
	} else if (controller.vert < 0 && onstage) {
		// crouch
		// TODO: crouch animation
	} else if (onstage) {
		xVel = controller.vert * movespeed;; // TODO: see if causes bug when hit
	}
}

// apply velocities
x += xVel;
y += yVel;