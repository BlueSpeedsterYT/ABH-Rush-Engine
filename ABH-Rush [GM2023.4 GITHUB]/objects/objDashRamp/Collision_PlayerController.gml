/// @description Collide With Player

	if(isActive && Player.actionCurrent != PlayerActionDead){
		isActive = false;
		Player.ground = false;
		Player.actionCurrent = PlayerActionDashRamp;
		Player.animIndex = 0;
		Player.x = x;
		Player.y = y - 20;
		Player.speedX = image_xscale*12;
		Player.speedY = -forcePower;
		Player.animDir = image_xscale;
	}