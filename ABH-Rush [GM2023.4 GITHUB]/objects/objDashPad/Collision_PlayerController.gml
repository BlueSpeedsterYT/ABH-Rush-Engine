/// @description Collide with Player

	if(isActive && Player.actionCurrent != PlayerActionDead){
		Player.speedX = image_xscale*Player.speedLimitX;
		Player.animDir = image_xscale;
		Player.actionCurrent = PlayerActionDashPad;
		Player.newAlarm[1] = 20;
		Player.ground = true;
		isActive = false;
	}