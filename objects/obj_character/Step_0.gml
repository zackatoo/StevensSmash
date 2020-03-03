
// Don't do all this checking if the character is dead
if (dead) exit;

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
	if (hitstun == 0 and curMove != undefined) {
		instance_destroy(curMove);
		curMove = undefined; // stop doing move
		ds_list_clear(hit_enemies);
		sprite_index = idleSprite; // jank af way to stop move animation
	} else if (curMove != undefined) {
		// if currently in move
		curMove.curFrame++;
		if (curMove.curFrame >= curMove.startFrame and curMove.curFrame <= curMove.endFrame) {
			// keep hitbox out from startframe to endframe
			doHitbox(self, curMove, hit_enemies);
		}
	}
} else {
	// movement
	if (controller.pressY && onstage) { // only one jump for now
		// jump
		yVel += jumpheight;
	} else if (controller.vert < 0 && onstage) {
		// crouch
		// TODO: crouch animation
	} else {
		// move left/right
		 // TODO: see if causes bug when hit
		 xVel = controller.horz * movespeed;
		 if (xVel != 0) {
			 sprite_index = walkSprite;
		 } else {
			 sprite_index = idleSprite;
		 }
	}
	
	// attacks
	if (controller.pressA) {
		if (onstage) {
			// do jab
			xVel = 0; //TEMP: stop and do jab
			doMove(self, instance_create_depth(0,0,0, jabObj));
		} else {
			// do aerial
			doMove(self, instance_create_depth(0,0,0, aerialObj));
		}
	}
}

if (invincibility > 0) {
	invincibility--;
	image_alpha -= invincibleTrans;
	if (image_alpha < 0.5) {
		invincibleTrans = -invincibleTrans;
	} else if (image_alpha > 1) {
		invincibleTrans = -invincibleTrans;
		image_alpha = 1;
	}
} else {
	image_alpha = 1;
}

if (xVel < 0) image_xscale = 1;
else if (xVel > 0) image_xscale = -1;

// apply velocities
x += xVel;
y += yVel;

if (x < 0 || x > room_width || y < 0 || y > room_height) {
	// die
	stocks--;
	if (stocks > 0) {
		damage_percent = 0;
		x = respawnX;
		y = respawnY;
		invincibility = room_speed * 2;
	} else {
		// Put it somewhere else
		visible = false;
		dead = true;
	}
}