/// @description Set Up Character Code

	// Set Up Custom Alarms 5 to 8:
	if(newAlarm[0] > 0) // Reset Gravity
	{
		newAlarm[0] -= 1;
		if(newAlarm[0] == 1)
		{
			grav = 0.21875;
		}
	}
	if(newAlarm[1] > 0) // Reset Action from Dash Pad
	{
		newAlarm[1] -= 1;
		if(newAlarm[1] == 1 && actionCurrent == PlayerActionDashPad)
		{
			actionCurrent = PlayerActionNormal;
		}
	}
	if(newAlarm[2] > 0) // Homing Dash Gravity
	{
		newAlarm[2] -= 1;
		if(newAlarm[2] == 1 && actionCurrent == PlayerActionHomingDash)
		{
			actionCurrent = PlayerActionNormal;
			if(character == PlayerSonic) speedX = 0; // UNCOMMENT THIS CODE TO LET SONIC GAIN ADDITIONAL SPEED.
			speedY = 0;
			grav = 0.21875;
		}
	}
	if(newAlarm[3] > 0) // Player Stage Restart (Death)
	{
		newAlarm[3] -= 1;
		if(newAlarm[3] == 1)
		{
			room_restart();
		}
	}
	if(newAlarm[5] > 0) // Reset Gravity
	{
		newAlarm[5] -= 1;
		if(newAlarm[5] == 1)
		{
			grav = 0.21875;
		}
	}
	if(newAlarm[6] > 0) // Reset Action (?)
	{
		newAlarm[6] -= 1;
		if(newAlarm[6] == 1)
		{
			actionCurrent = PlayerActionNormal;
		}
	}
	if(newAlarm[7] > 0) // Jump off of a Wall
	{
		newAlarm[7] -= 1;
		if(newAlarm[7] == 1)
		{
			actionCurrent = PlayerActionNormal;
			x = x - (animDir * 6)
			wallJumpOff = true;
		}
	}
	if(newAlarm[8] > 0) // Something about Tails.
	{
		newAlarm[8] -= 1;
		if(newAlarm[8] == 1)
		{
			if(character == PlayerTails){
				animIndex = 0;
				actionCurrent = PlayerActionHomingDash;
			}
		}
	}
	
	// Reset the sprites to the Idle ones if not moving.
	if !allowMovement{
		switch(character)
		{
			case PlayerSonic:
			{
				animSprite = sprSonicIdle;
			}
			break;
		}
	}
	
	// Check Input Methods to Swap Input Types
	if keyboard_check(vk_anykey) // If any key is pressed.
		inputType = InputKeyboard // set input type to "InputKeyboard"
	if check_xbox_controller() // Else iff any XInput button is pressed.
	    inputType = InputXbox // set input type to "InputXbox"
		
	// Control the Boost Energy and it's draining
	if(form != PlayerFormNormal || Stage.StageAct == ZoneType.HUB)
	{
		boostAmount = 100;
	}
	else
	{
		if(boostAmount >= 100) boostAmount = 100;
		if(boostAmount <= 0) boostAmount = 0;
	}
	
	// Create Effects
	if instance_exists(fxBoost) || (character == PlayerShadow && (actionCurrent == PlayerActionHomingDash)) || (form != PlayerFormNormal)
	{
	    trailStep += 1
	    if trailStep >= 7
	    {
	        instance_create_depth(x, y-1, depth + 1, fxTrail);
			switch(character){
				case PlayerSonic:{
					trailBlend = c_aqua;
				}
				break;
			}
	        trailStep = 0;
	    }
    
	    if ground && trailStep == 6 && speedX != 0
	    {
	        var fx = instance_create_depth(x,y,0,fxBoostSpeed);
	        fx.image_xscale = animDir;
	        fx.image_angle = angle;   
	    }
	}
	
	if actionCurrent == PlayerActionQTESuccess
	{
	    trailStep += 1
	    if trailStep >= 5
	    {
	        instance_create_depth(x,y,0,fxSparkleTrail);
	        trailStep = 0
	    }
	}
	
	
	// Call Physics and Player Movement Scripts
	PlayerPhysics();
	
	if(!StageManager.StageClear)
	{
		// UNCOMMENT THE TAILS CHECKS IF HE IS IN THE GAME AND THAT THE "TailsMovement" SCRIPT IS ADDED.
		//if(character != PlayerTails)
		//{
			PlayerMovement();
		//}else{
			//TailsMovement();
		//}
	}
	else
	{
		actionCurrent = PlayerActionNormal;
		animDir = 1;
		if(abs(speedX) < 9)
			speedX += accel;
	}
	
	// Invincible after Damage.
	if damageEffect > 0 
	{
	    damageEffect -= 1
	    if damageEffect == 1
	        isHit = true;
	}