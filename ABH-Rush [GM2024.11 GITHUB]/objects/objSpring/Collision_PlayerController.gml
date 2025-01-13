/// @description Set up Dash Ring

	if isActive && Player.actionCurrent != PlayerActionDead {
		EffectDraw(sprDashFX,image_angle, 1, 1, false);
		
		Player.angle = 0;
		Player.actionCurrent = PlayerActionSpring;
		Player.ground = false
	    Player.image_index = 0;
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
            Player.image_index = 0;
            Player.sprite_index = sprSonicCorkscrew;
            
        }
        else if (image_angle > 0 && image_angle < 45) || (image_angle < 180 && image_angle > 135)
        {
            Player.sprite_index = sprSonicWallJump;
        }
        else
        {
            Player.sprite_index = sprSonicJump;
        }
	}