/// @description Set up Dash Ring

	if isActive && Player.actionCurrent != PlayerActionDead {
		isActive = false;
		if image_angle == 0 || image_angle == 180 {
			Player.grav = 0;
			Player.newAlarm[0] = alarmTimer;
			Player.actionCurrent = PlayerActionDashRing;
		}
		else
		{
			Player.actionCurrent = PlayerActionSpring;
			if image_angle == 45 || image_angle == 135
            {   
                Player.animIndex = 0;
                Player.animSprite = sprSonicCorkscrew;
            }
            else if (image_angle > 0 && image_angle < 45) || (image_angle < 180 && image_angle > 135)
            {
                Player.animSprite = sprSonicWallJump;
            }
            else
            {
                Player.animSprite = sprSonicJump;
            }
		}
		
		Player.ground = false
	    Player.animIndex = 0;
	    Player.x = x;
	    Player.y = y;
	    Player.speedX = dcos(image_angle)*forcePower;
	    Player.speedY = -dsin(image_angle)*forcePower;
	    if image_angle < 90 && image_angle > -90
	        Player.animDir = 1;
	    else if image_angle > 90 && image_angle < -90
	        Player.animDir = -1;
			
		EffectDraw(sprDashRingFX, 0, 1, 1, true)
	}