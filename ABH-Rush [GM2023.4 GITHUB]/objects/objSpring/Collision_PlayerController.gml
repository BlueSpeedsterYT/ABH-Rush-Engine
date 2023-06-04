/// @description Set up Dash Ring

	if isActive && Player.actionCurrent != PlayerActionDead {
		Player.angle = 0;
		Player.actionCurrent = PlayerActionSpring;
		Player.ground = false
	    Player.animIndex = 0;
	    Player.x = x + 16*dcos(image_angle);
	    Player.y = y - 16*dsin(image_angle);
		isActive = false;
	    Player.speedX = dcos(image_angle)*forcePower;
	    Player.speedY = -dsin(image_angle)*forcePower;
	    if image_angle < 90 && image_angle > -90
	        Player.animDir = 1;
	    else if image_angle > 90 && image_angle < -90
	        Player.animDir = -1;
		image_speed = 0.75;
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