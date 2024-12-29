/// @description Collide with Player

	if(isActive && Player.actionCurrent != PlayerActionDead){
		image_xscale = clamp(image_xscale, -1, 1);
		Player.speedX = image_xscale*Player.speedLimitX;
		Player.animDir = image_xscale;
		Player.actionCurrent = PlayerActionDashPad;
		Player.newAlarm[1] = 20;
		Player.ground = true;
		isActive = false;
		
		
		EffectDraw(sprDashFX, image_angle, image_xscale, 1, false)
	}