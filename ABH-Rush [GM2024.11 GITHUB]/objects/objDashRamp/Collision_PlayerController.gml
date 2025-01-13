/// @description Collide With Player

	if(isActive && Player.actionCurrent != PlayerActionDead){
		isActive = false;
		Player.ground = false;
		if(rampType == "Normal"){
			Player.actionCurrent = PlayerActionDashRamp;
		}else if(rampType != "Normal"){
			Player.actionCurrent = PlayerActionQTEInit;
		}
		Player.image_index = 0;
		Player.x = x;
		Player.y = y - 20;
		Player.animDir = image_xscale;
		if(rampType == "Normal"){
			Player.speedX = Player.animDir*12;
			Player.speedY = -forcePower;
			qteTimer = 0;
			EffectDraw(sprDashFX, 30 * image_xscale, image_xscale, 1, true)
		}else if(rampType != "Normal"){
			Player.speedX = Player.animDir*8;
			Player.speedY = -7;
			qteTimer = 60;
			//EffectDraw(sprRainbowRingFX,0,1,1,true)
		}
	}