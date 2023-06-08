/// @description Collide With Player

	if(isActive && Player.actionCurrent != PlayerActionDead){
		isActive = false;
		Player.ground = false;
		if(rampType == 0){
			Player.actionCurrent = PlayerActionDashRamp;
		}else if(rampType != 0){
			Player.actionCurrent = PlayerActionQTEInit;
		}
		Player.animIndex = 0;
		Player.x = x;
		Player.y = y - 20;
		Player.animDir = image_xscale;
		if(rampType == 0){
			Player.speedX = Player.animDir*12;
			Player.speedY = -forcePower;
			qteTimer = 0;
		}else if(rampType != 0){
			Player.speedX = Player.animDir*8;
			Player.speedY = -7;
			qteTimer = 60;
		}
	}